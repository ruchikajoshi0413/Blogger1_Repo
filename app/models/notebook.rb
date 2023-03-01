class Notebook < ApplicationRecord
    validates :title, presence: true

    has_many :notes
end
