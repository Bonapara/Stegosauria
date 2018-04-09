class AddDimensionsToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :height, :integer
    add_column :artworks, :width, :integer
    add_column :artworks, :depth, :integer
  end
end
