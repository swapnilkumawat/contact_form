class ContactMailer < ActionMailer::Base

  default from: 'from@example.com'
  layout 'mailer'

  def message(contact_id)
    recipients = 'info@ajackus.com'
    @contact = Contact.find(contact_id)
    @full_name = @contact.first_name + @contact.last_name
    subject = "A new message from #{@full_name}"
    mail(to: recipients, subject: subject, from: @contact.email)
  end

end
  