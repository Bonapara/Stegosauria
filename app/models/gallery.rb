class Gallery < ApplicationRecord
  mount_uploader :photo_gallery, PhotoUploader
  mount_uploader :photo_owner, PhotoUploader
end
