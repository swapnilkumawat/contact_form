class Contact < ApplicationRecord

  validates :first_name, :last_name, :email, :message, presence: true

  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/

  after_create :send_mail

  def send_mail
    ContactMailer.new_message(self.id).deliver_now
  end

end