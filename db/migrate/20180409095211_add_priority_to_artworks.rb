class AddPriorityToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :priority, :boolean
  end
end
