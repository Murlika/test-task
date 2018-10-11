class Question < ApplicationRecord
	belongs_to :test
	has_many :answers
	
	mount_uploader :image, ImagesUploader
	
	scope :n_random, -> (n){ order("RANDOM()").limit(n)}
end
