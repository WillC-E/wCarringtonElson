class User < ApplicationRecord

	has_one :profile 

  has_secure_password
  validates :email, presence: true
  validates :userId, presence: true 
  validates_length_of :userId, minimum: 4, maximum: 10
  validates_uniqueness_of :email
  validates_uniqueness_of :userId
end
