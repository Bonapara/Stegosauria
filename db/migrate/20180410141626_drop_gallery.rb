class DropGallery < ActiveRecord::Migration[5.1]
  def change
    drop_table :galleries
  end
end
