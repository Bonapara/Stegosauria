class CreateHomePs < ActiveRecord::Migration[5.1]
  def change
    create_table :home_ps do |t|
      t.string :photo_slide1
      t.string :photo_slide2
      t.string :photo_slide3

      t.timestamps
    end
  end
end
