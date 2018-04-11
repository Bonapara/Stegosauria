COLORS = { "Sortie culturelle" => '#2F80ED', "Evènement" => '#EE5F5B', "Presse" => '#F2994A' }

class Actu < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  def event_color
    COLORS[actu_type]
  end
end
