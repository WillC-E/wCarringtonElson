class Product < ApplicationRecord
	has_many :review
	has_attached_file :prodPhoto
	validates_attachment :prodPhoto, content_type: { content_type: /\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }
end

