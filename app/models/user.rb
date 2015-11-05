class User < ActiveRecord::Base

  devise :omniauthable

  has_and_belongs_to_many :nominations

  accepts_nested_attributes_for :nominations, reject_if: ->(_) { _[:nominee].blank? && _[:specialty].blank? }, allow_destroy: true


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.image_url = auth.info.image
    end
  end

end
