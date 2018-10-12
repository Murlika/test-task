class Question < ApplicationRecord

	has_many :answers
	
	mount_uploader :image, ImagesUploader
	
	scope :n_random, -> (n){ order("RANDOM()").limit(n)}
end
