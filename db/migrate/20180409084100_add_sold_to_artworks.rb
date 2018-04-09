class AddSoldToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :sold, :boolean
  end
end
