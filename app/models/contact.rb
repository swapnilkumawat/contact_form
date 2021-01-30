class Contact < ApplicationRecord

  validates :first_name, :last_name, :email, :message, presence: true

  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/

end