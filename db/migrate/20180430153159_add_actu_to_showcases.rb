class AddActuToShowcases < ActiveRecord::Migration[5.1]
  def change
    add_reference :show_cases, :actu, foreign_key: true
    add_column :show_cases, :photo_actu, :string
    add_column :show_cases, :actu_description, :string
  end
end
