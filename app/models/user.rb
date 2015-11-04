class User < ActiveRecord::Base

  devise :omniauthable

  has_and_belongs_to_many :nominations

end
