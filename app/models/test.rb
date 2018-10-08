class Test < ApplicationRecord
	has_many :questions
	has_many :answers, through: :questions
	
	scope :ordered, -> { order :id }
end
