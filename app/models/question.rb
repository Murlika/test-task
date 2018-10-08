class Question < ApplicationRecord
	belongs_to :test
	has_many :answers
	
	mount_uploader :image, ImageUploader
end
