class RemoveSpeciality3ToArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :speciality3, :string
  end
end
