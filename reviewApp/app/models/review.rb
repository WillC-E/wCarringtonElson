class Review < ApplicationRecord

	belongs_to :profile, optional: true
	belongs_to :product, optional: true

  validates :prodRating, presence: true
  validates :reviewText, presence: true 
  
end
