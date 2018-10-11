class ApplicationMailer < ActionMailer::Base
  default from: 'admin@test-task.com'
  layout 'mailer'
end
