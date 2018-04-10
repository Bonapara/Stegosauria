class ShowCase < ApplicationRecord
  belongs_to :artist
  belongs_to :artwork
  belongs_to :gallery
  mount_uploader :photo_artist, PhotoUploader
  mount_uploader :photo_artwork, PhotoUploader
  mount_uploader :photo_gallery, PhotoUploader
end
