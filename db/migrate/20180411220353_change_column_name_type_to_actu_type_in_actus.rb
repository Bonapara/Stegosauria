class ChangeColumnNameTypeToActuTypeInActus < ActiveRecord::Migration[5.1]
  def change
    rename_column :actus, :type, :actu_type
  end
end
