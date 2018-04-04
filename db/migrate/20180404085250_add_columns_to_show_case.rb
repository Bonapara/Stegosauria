class AddColumnsToShowCase < ActiveRecord::Migration[5.1]
  def change
    add_column :show_cases, :artist_description, :string
    add_column :show_cases, :artwork_description, :string
    add_column :show_cases, :article_description, :string
    add_column :show_cases, :gallery_description, :string
  end
end
