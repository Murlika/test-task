class QuestionsController < ApplicationController
  def index
  end
  
  def show
    @passing = TestPassing.find(session[:test_id])
 
	@question = Question.find_by_id(@passing.enum_questions[@passing.current_state])
	@answers = @question.answers unless @question.nil?

  end
  
  def answer
   #abort is_right?.inspect
   @passing = TestPassing.find(session[:test_id])
   @passing.update user_answers:@passing.user_answers.to_a+params[:answers].to_a,user_results:@passing.user_results.to_a + (is_right? ? [1] : [0])

    if @passing.enum_questions[@passing.current_state].nil?
		redirect_to :finish
		return
	else
		redirect_to question_ask_path(@passing.test.id,@passing.enum_questions[@passing.current_state] )
    end 
   
  end
  
  private
  
  def is_right?
  if params[:answers].nil?
	return false
  end
  
    question = Question.find(@passing.enum_questions[@passing.current_state])

	(question.answer_true_ids - params[:answers].map(&:to_i)).empty? && (question.answer_true_ids.length == params[:answers].length)
  end
  
end
