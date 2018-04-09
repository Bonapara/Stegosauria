class Artist < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks
  has_many :show_cases

  validates :first_name,     presence: true,   uniqueness: true
  validates :last_name,      presence: true,   uniqueness: true

  def full_name
    first_name + " " + last_name
  end

end
