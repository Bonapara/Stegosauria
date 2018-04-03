class Artwork < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :artist
  has_many :show_cases
  validates :name,     presence: true,   uniqueness: true
  paginates_per 10
end
