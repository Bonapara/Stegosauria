class RemoveDimensionsFromArtworks < ActiveRecord::Migration[5.1]
  def change
    remove_column :artworks, :dimensions, :string
  end
end
