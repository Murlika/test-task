class Test < ApplicationRecord
	has_many :questions
	has_many :answers, through: :questions
	
	scope :ordered, -> { order :id }

	def questions_count
		return 0 unless self.N.present?
		self.N
	end
end
