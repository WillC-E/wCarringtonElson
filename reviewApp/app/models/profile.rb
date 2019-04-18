class Profile < ApplicationRecord

	has_many :reviews

	belongs_to :user, optional: true

	has_attached_file :photo
	validates_attachment :photo, content_type: { content_type: /\Aimage\/.*\z/ }, size: { less_than: 1.megabyte }
end
