class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = t :message_sent_successfully
    end
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :mobile_number, :message)
  end

end