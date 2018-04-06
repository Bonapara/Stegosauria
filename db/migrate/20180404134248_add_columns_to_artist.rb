class AddColumnsToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :speciality2, :string
    add_column :artists, :speciality3, :string
  end
end
