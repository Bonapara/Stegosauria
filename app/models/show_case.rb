class ShowCase < ApplicationRecord
  belongs_to :artist
  belongs_to :artwork
  belongs_to :expo
  belongs_to :actu
  belongs_to :galerie
  # PHOTO Cloudinary
  mount_uploader :photo_artist, PhotoUploader
  mount_uploader :photo_artwork, PhotoUploader
  mount_uploader :photo_expo, PhotoUploader
  mount_uploader :photo_actu, PhotoUploader
  mount_uploader :photo_galerie, PhotoUploader
  # Presence TRUE
  validates :photo_artist,     presence: true
  validates :photo_artwork,     presence: true
  validates :photo_expo,   presence: true
  validates :photo_actu,   presence: true
  validates :photo_galerie,   presence: true
  validates :artwork_description,     presence: true, :allow_blank => false
  validates :artist_description,     presence: true,  :allow_blank => false
  validates :expo_description,     presence: true,  :allow_blank => false
  validates :actu_description,     presence: true,  :allow_blank => false
  validates :galerie_description,     presence: true,  :allow_blank => false
  validates :position_expo,    presence: true
  # Length of description
  validates_length_of :artist_description, :minimum => 30, :maximum => 50
  validates_length_of :artwork_description, :minimum => 30, :maximum => 50
  validates_length_of :expo_description, :minimum => 30, :maximum => 50
  validates_length_of :actu_description, :minimum => 30, :maximum => 50
  validates_length_of :galerie_description, :minimum => 30, :maximum => 50
end
