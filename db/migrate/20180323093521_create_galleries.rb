class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name_gallery
      t.text :description
      t.string :photo_gallery
      t.string :first_name_owner
      t.string :last_name_owner
      t.text :bio_owner
      t.string :photo_owner
      t.string :address

      t.timestamps
    end
  end
end
