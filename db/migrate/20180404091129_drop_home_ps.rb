class DropHomePs < ActiveRecord::Migration[5.1]
  def change
    drop_table :home_ps
  end
end
