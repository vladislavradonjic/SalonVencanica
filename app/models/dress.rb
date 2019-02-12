class Dress < ApplicationRecord
	extend FriendlyId
	has_many :dress_images
	accepts_nested_attributes_for :dress_images, 
																reject_if: lambda { |attrs| attrs['image'].blank? }
																
	friendly_id :name, use: :slugged
end
