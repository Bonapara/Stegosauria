class AddColumnsToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :opening_hours, :string
    add_column :galleries, :phone, :string
    add_column :galleries, :email, :string
  end
end
