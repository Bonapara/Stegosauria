class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :dimensions
      t.string :type
      t.text :description
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
