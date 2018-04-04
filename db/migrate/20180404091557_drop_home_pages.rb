class DropHomePages < ActiveRecord::Migration[5.1]
  def change
    drop_table :home_pages
  end
end
