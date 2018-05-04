COLORS = { "Nous recommandons" => '#2F80ED', "Evènement" => '#EE5F5B', "Presse" => '#F2994A', "Article" => '#00b894'}

class Actu < ApplicationRecord
  # Dependance
  has_many :show_cases
  # Photo Cloudinary
  mount_uploader :photo, PhotoUploader
  # Validations
  validates :name,     presence: true
  validates :title_2,     presence: true
  # validates :location,     presence: true
  validates :description,     presence: true
  validates :photo,     presence: true
  validates :actu_type,     presence: true
  validates :publication_date,     presence: true


  def actu_type_enum
    ['Article', 'Presse', 'Evènement', 'Nous recommandons']
  end

  def event_color
    COLORS[actu_type]
  end
end
