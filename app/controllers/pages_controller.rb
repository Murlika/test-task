class PagesController < ApplicationController
  def index
  end
  
  def finish
  if session[:test_id].nil?
  redirect_to root_path
  return
  end
  
  passing = TestPassing.find(session[:test_id])
  @true_count = passing.user_results.find_all{ |elem| elem == 1 }.size
  @persent_count = percent_of(@true_count, passing.enum_questions.size)

  UserMailer.with(email: current_user.email, passing: passing).testpass_email.deliver_now

  session.clear
  end
  
  private 
  
  def percent_of(m, n)
    m.to_f / n.to_f * 100.0
  end
  
end
