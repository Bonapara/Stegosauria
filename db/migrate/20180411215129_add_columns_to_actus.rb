class AddColumnsToActus < ActiveRecord::Migration[5.1]
  def change
    add_column :actus, :type, :string
  end
end
