class UserMailer < ActionMailer::Base
  default from: "mailer@coreregister.com"

  def new_lead_email(consultation)
  	@consultation = consultation
  	mail(to: 'chris@coreregister.com', subject: 'New Lead')
  end
end
