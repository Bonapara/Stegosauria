class AddPhotoArtworkToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :photo_artwork, :string
  end
end
