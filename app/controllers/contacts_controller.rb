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

  def change_locale
    I18n.default_locale = params[:locale].to_sym
    @contact = Contact.new
    respond_to do |format|
      format.js
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :mobile_number, :message)
  end

end