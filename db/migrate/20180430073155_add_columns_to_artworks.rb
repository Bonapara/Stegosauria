class AddColumnsToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :technique, :string
  end
end
