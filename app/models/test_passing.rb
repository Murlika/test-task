class TestPassing < ApplicationRecord
	belongs_to :test
	
	before_create do
		test_N = Test.find(self.test_id).questions_count
		
		self.enum_questions = Question.n_random(test_N).ids 
		
		self.current_state = 0
	end
	
	before_save do
		self.current_state += 1 unless self.current_state.nil?
	end
	

end
