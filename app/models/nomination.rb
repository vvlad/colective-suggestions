class Nomination < ActiveRecord::Base

  has_and_belongs_to_many :users

  def ensure_all_nominees
    nomination.size.upto(3) do
      nomination.build
    end
  end
end
