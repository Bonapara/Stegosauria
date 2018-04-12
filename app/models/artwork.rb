class Artwork < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :artist
  has_many :show_cases
  validates :name,     presence: true,   uniqueness: true
  validates :artwork_domain,     presence: true,   uniqueness: true
  validates :description,     presence: true,   uniqueness: true
  validates :photo,     presence: true,   uniqueness: true
  validates :height,     presence: true,   uniqueness: true
  validates :width,     presence: true,   uniqueness: true
  validates :price,     presence: true,   uniqueness: true

  paginates_per 10



  # private

  # def priority
  #   if Artwork.where(priority: true).length > 1
  #     errors.add(:priority, "cannot be above 2 elements")
  #   end
  # end
end
