class Artist < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :artworks
  has_many :show_cases
  paginates_per 30

  validates :first_name,     presence: true
  validates :last_name,      presence: true
  validates :biography,     presence: true
  validates_length_of :biography, :minimum => 170, :maximum => 500
  validates :photo,     presence: true
  validates :speciality1,     presence: true

  def speciality1_enum
    ['Sculpture', 'Peinture', 'Photographie', 'Dessin', 'Céramique', 'Installation', 'Edition']
  end

  def speciality2_enum
    ['Sculpture', 'Peinture', 'Photographie', 'Dessin', 'Céramique', 'Installation', 'Edition']
  end

  def full_name
    if first_name != nil
      first_name + " " + last_name
    end
  end

end
