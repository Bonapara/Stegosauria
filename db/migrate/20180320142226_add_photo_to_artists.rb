class AddPhotoToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :photo, :string
  end
end
