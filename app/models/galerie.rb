class Galerie < ApplicationRecord
  # has_many :show_cases
  mount_uploader :photo, PhotoUploader
  validates :name,     presence: true
  validates :title_1,     presence: true
  validates_length_of :title_1, :maximum => 25
  validates :title_2,     presence: true
  validates_length_of :title_2, :maximum => 25
  validates :description_1,     presence: true
  validates :description_2,     presence: true
  validates :address,     presence: true
  validates :opening_hours,     presence: true
  validates :phone,     presence: true
  validates :email,     presence: true
end
