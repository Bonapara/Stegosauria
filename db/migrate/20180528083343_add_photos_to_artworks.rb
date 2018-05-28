class AddPhotosToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :photo_2, :string
    add_column :artworks, :photo_3, :string
    add_column :artworks, :photo_4, :string
  end
end
