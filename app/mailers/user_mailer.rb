class UserMailer < ApplicationMailer
default from: 'notifications@test-task.com'

  def testpass_email
    @user_email = params[:email]
    passing  = params[:passing]
	@true_count = passing.user_results.find_all{ |elem| elem == 1 }.size
	@persent_count = percent_of(@true_count, passing.enum_questions.size)
    mail(to: @user_email, subject: 'Some user pass test')
  end
  
  def percent_of(m, n)
    m.to_f / n.to_f * 100.0
  end
end
