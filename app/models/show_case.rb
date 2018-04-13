class ShowCase < ApplicationRecord
  belongs_to :artist
  belongs_to :artwork
  belongs_to :expo
  belongs_to :galerie
  # PHOTO Cloudinary
  mount_uploader :photo_artist, PhotoUploader
  mount_uploader :photo_artwork, PhotoUploader
  mount_uploader :photo_expo, PhotoUploader
  mount_uploader :photo_galerie, PhotoUploader
  # Presence TRUE
  validates :photo_artist,     presence: true
  validates :photo_artwork,     presence: true
  validates :artwork_description,     presence: true, :allow_blank => false
  validates :artist_description,     presence: true,  :allow_blank => false
  # Length of artist
  validates_length_of :artist_description, :minimum => 30, :maximum => 60
  validates_length_of :artwork_description, :minimum => 30, :maximum => 60
end
