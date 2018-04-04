class Article < ApplicationRecord
  has_many :show_cases
  mount_uploader :picture, PhotoUploader
end
