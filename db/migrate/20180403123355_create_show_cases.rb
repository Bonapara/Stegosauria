class CreateShowCases < ActiveRecord::Migration[5.1]
  def change
    create_table :show_cases do |t|
      t.references :artist, foreign_key: true
      t.string :photo_artist
      t.references :artwork, foreign_key: true
      t.string :photo_artwork
      t.references :article, foreign_key: true
      t.string :photo_article
      t.references :gallery, foreign_key: true
      t.string :photo_gallery

      t.timestamps
    end
  end
end
