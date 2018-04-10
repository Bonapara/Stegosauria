class CreateGaleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galeries do |t|
      t.string :name
      t.string :photo
      t.string :title_1
      t.text :description_1
      t.string :title_2
      t.text :description_2
      t.string :address
      t.string :opening_hours
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
