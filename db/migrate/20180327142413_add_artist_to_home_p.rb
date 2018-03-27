class AddArtistToHomeP < ActiveRecord::Migration[5.1]
  def change
    add_reference :home_ps, :artist, foreign_key: true
  end
end
