class Gallery < ApplicationRecord
  has_many :show_cases
  mount_uploader :photo_gallery, PhotoUploader
  mount_uploader :photo_owner, PhotoUploader
end
