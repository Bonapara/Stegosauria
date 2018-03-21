class Artist < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks

  validates :first_name,     presence: true,   uniqueness: true
  validates :last_name,      presence: true,   uniqueness: true
end
