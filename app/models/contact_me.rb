class ContactMe < ApplicationRecord
    validates :email, presence: true
    validates :city, presence: true
    validates :contact_no, presence: true, length: { minimum: 10 }, length: { maximum: 10 }
end

