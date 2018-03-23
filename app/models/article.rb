class Article < ApplicationRecord
  mount_uploader :picture, PhotoUploader
end
