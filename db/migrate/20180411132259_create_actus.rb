class CreateActus < ActiveRecord::Migration[5.1]
  def change
    create_table :actus do |t|
      t.string :title_1
      t.string :title_2
      t.date :date_from
      t.date :date_to
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
