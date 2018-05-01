class RenameActuInActus < ActiveRecord::Migration[5.1]
  def change
    rename_column :actus, :title_1, :name
  end
end
