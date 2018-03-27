class Artwork < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :artist
  validates :name,     presence: true,   uniqueness: true
  paginates_per 10
end
