class RemoveDateFromActus < ActiveRecord::Migration[5.1]
  def change
    remove_column :actus, :date_from, :date
    remove_column :actus, :date_to, :date
    add_column :actus, :dates, :string
  end
end
