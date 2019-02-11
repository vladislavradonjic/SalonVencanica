class Dress < ApplicationRecord
	extend FriendlyId
	has_many :dress_images
	friendly_id :name, use: :slugged
end
