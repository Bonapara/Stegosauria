COLORS = { "Sortie culturelle" => '#2F80ED', "Evènement" => '#EE5F5B', "Presse" => '#F2994A', "Article" => '#00b894'}

class Actu < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :title_1,     presence: true
  validates :title_2,     presence: true
  validates :date_from,     presence: true  # Dans le cas d'un article de presse mettre la date de publication article en date_from
  # validates :date_to,     presence: true
  # validates :location,     presence: true
  validates :description,     presence: true
  validates :photo,     presence: true
  validates :actu_type,     presence: true

  def actu_type_enum
    ['Article', 'Presse', 'Evènement', 'Sortie culturelle']
  end

  def event_color
    COLORS[actu_type]
  end
end
