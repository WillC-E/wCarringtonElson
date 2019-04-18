class User < ApplicationRecord

	has_one :profile 

  has_secure_password
  validates_uniqueness_of :email
end
