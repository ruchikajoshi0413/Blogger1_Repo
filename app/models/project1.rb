class Project1 < ApplicationRecord
    mount_uploader :image, AvatarUploader

    validates :image, presence: true
    validates :title, presence: true
    validates :description, presence: true

    has_one_attached :image, :dependent => :destroy
end
