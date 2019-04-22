class Product < ApplicationRecord
	has_many :review
	has_attached_file :prodPhoto
	validates_attachment :prodPhoto, content_type: { content_type: /\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }

	validates :productName, presence: true
	validates :brand, presence: true
	validates :avgCost, presence: true
	validates :category, presence: true
	validates :releaseDate, presence: true
	validates :description, presence: true

end

