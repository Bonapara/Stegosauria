class RemoveGalleryFromShowCases < ActiveRecord::Migration[5.1]
  def change
    remove_reference :show_cases, :gallery, foreign_key: true
    remove_column :show_cases, :photo_gallery, :string
    remove_column :show_cases, :gallery_description, :string
  end
end
