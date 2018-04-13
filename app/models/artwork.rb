class Artwork < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :artist
  has_many :show_cases
  validates :name,     presence: true
  validates :artwork_domain,     presence: true
  validates :description,     presence: true
  validates_length_of :description, :minimum => 140, :maximum => 170
  validates :photo,     presence: true
  validates :height,     presence: true
  validates :width,     presence: true
  validates :price,     presence: true

  def artwork_domain
    ['Sculpture', 'Peinture', 'Photographie', 'Dessin', 'Céramique', 'Installation', 'Edition']
  end

  paginates_per 30



  # private

  # def priority
  #   if Artwork.where(priority: true).length > 1
  #     errors.add(:priority, "cannot be above 2 elements")
  #   end
  # end
end
