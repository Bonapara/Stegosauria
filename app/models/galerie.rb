class Galerie < ApplicationRecord
  # has_many :show_cases
  mount_uploader :photo, PhotoUploader
end
