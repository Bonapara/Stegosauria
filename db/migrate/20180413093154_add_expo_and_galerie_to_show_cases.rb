class AddExpoAndGalerieToShowCases < ActiveRecord::Migration[5.1]
  def change
    add_reference :show_cases, :expo, foreign_key: true
    add_column :show_cases, :photo_expo, :string
    add_column :show_cases, :expo_description, :string
    add_reference :show_cases, :galerie, foreign_key: true
    add_column :show_cases, :photo_galerie, :string
    add_column :show_cases, :galerie_description, :string
  end
end
