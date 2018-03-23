class HomeP < ApplicationRecord
  mount_uploader :photo_slide1, PhotoUploader
  mount_uploader :photo_slide2, PhotoUploader
  mount_uploader :photo_slide3, PhotoUploader
end
