class AddColumnsToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :price, :string
    add_column :artworks, :number, :string
    add_column :artworks, :year, :string
  end
end
