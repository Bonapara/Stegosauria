class ChangeColumnNameTypeToDomainInArtworks < ActiveRecord::Migration[5.1]
  def change
    rename_column :artworks, :type, :artwork_domain
  end
end
