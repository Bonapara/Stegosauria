class Artwork < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo_2, PhotoUploader
  # mount_uploader :photo_3, PhotoUploader
  # mount_uploader :photo_4, PhotoUploader

  belongs_to :artist
  has_many :show_cases
  validates :name,     presence: true
  validates :artwork_domain,     presence: true
  validates :description,     presence: true
  validates_length_of :description, :minimum => 140, :maximum => 300
  validates :photo,     presence: true
  validates :height,     presence: true
  validates :width,     presence: true
  validates :price,     presence: true
  validates :technique,     presence: true

  def artwork_domain_enum
    ['Sculpture', 'Peinture', 'Photographie', 'Dessin', 'Céramique', 'Installation', 'Edition']
  end

   def price_enum
    ['Moins de 100 €', 'Entre 100 et 500 €', 'Entre 500 et 1000 €', 'Entre 1000 et 2500 €', 'Entre 2500 et 5000 €', 'Plus de 5000 €', 'Plus de 10 000 €', 'Nous consulter']
  end

  paginates_per 30



  # private

  # def priority
  #   if Artwork.where(priority: true).length > 1
  #     errors.add(:priority, "cannot be above 2 elements")
  #   end
  # end
end
