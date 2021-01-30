class ContactMailer < ActionMailer::Base

  default from: 'from@example.com'
  layout 'mailer'

  def new_message(contact_id)
    @contact = Contact.find(contact_id)
    @full_name = @contact.first_name + ' ' + @contact.last_name
    subject = "A new message from #{@full_name}"
    mail(to: 'info@ajackus.com', subject: subject, from: @contact.email)
  end

end
  