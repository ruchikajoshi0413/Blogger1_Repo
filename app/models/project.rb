class Project < ApplicationRecord
    validates :image, presence: true
    validates :title, presence: true
    validates :description, presence: true
end
