class Charge < ApplicationRecord
    validates :charges_type, presence: true, length: { maximum: 10 }
    validates :design, presence: true
    validates :photography, presence: true
    validates :storage, presence: true
    validates :support, presence: true
    validates :price, presence: true

end

