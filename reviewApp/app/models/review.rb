class Review < ApplicationRecord

	belongs_to :profile, optional: true
	#belongs_to :product
end
