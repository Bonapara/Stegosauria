class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.string :domain

      t.timestamps
    end
  end
end
