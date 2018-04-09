class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name_gallery
      t.string :photo_gallery
      t.string :title_1
      t.text :description_1
      t.string :title_2
      t.text :description_2
      t.string :address

      t.timestamps
    end
  end
end
