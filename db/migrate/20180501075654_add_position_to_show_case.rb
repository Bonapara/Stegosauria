class AddPositionToShowCase < ActiveRecord::Migration[5.1]
  def change
    add_column :show_cases, :position_expo, :integer
  end
end
