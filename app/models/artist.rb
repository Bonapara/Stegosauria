class Artist < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks
  has_many :home_ps

  validates :first_name,     presence: true,   uniqueness: true
  validates :last_name,      presence: true,   uniqueness: true
end
