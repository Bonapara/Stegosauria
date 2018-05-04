class ChangeDimensionsToBeStringInArtworks < ActiveRecord::Migration[5.1]
  def change
    change_column :artworks, :height, :string
    change_column :artworks, :width, :string
    change_column :artworks, :depth, :string
  end
end
