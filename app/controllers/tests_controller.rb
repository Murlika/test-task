class TestsController < ApplicationController
  def index
	 @tests = Test.ordered
  end
  
  def show
	@test = Test.find_by_id params[:id]
	passing = TestPassing.create user_id:0, test_id:params[:id]
	@question = @test.questions.find(passing.enum_questions[passing.current_state])
	session[:test_id] = passing.id
  end
end
