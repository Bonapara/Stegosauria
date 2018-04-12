class Artist < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks
  has_many :show_cases
  paginates_per 10

  validates :first_name,     presence: true,   uniqueness: true
  validates :last_name,      presence: true,   uniqueness: true
  validates :biography,     presence: true
  validates :photo_artist,     presence: true
  validates :speciality1,     presence: true


  def full_name
    first_name + " " + last_name
  end

end
