class Product < ApplicationRecord
	has_many :review
	has_attached_file :prodPhoto
	validates_attachment :prodPhoto, content_type: { content_type: /\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }

	validates :prodName, presence: true
	validates :brand, presence: true
	validates :avgCost, presence: true
	validates :Category, presence: true
	validates :ReleaseDate, presence: true
	validates :Description, presence: true

end

