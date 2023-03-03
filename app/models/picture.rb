class Picture < ApplicationRecord
    mount_uploader :image, AvatarUploader

    validates :image, presence: true
    
end
