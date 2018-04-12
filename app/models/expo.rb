class Expo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name,     presence: true
  validates :expo_type,     presence: true
  validates :artistes,     presence: true
  validates_length_of :artistes, :maximum => 130
  validates :date_from,     presence: true
  validates :date_to,     presence: true
  validates :vernissage_date,     presence: true
  validates :vernissage_hours_from,     presence: true
  validates :vernissage_hours_to,     presence: true
  validates :descriptions_expo,     presence: true
  validates_length_of :descriptions_expo, :minimum => 140, :maximum => 390
end
