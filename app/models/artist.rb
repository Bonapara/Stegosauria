class Artist < ApplicationRecord
  has_many :artworks

  validates :first_name,     presence: true,   uniqueness: true
  validates :last_name,      presence: true,   uniqueness: true
end
