class AddColumnToActus < ActiveRecord::Migration[5.1]
  def change
    add_column :actus, :publication_date, :date
  end
end
