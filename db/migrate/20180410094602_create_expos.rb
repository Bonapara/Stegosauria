class CreateExpos < ActiveRecord::Migration[5.1]
  def change
    create_table :expos do |t|
      t.string :name
      t.string :expo_type
      t.string :artistes
      t.string :location
      t.date :date_from
      t.date :date_to
      t.date :vernissage_date
      t.time :vernissage_hours_from
      t.time :vernissage_hours_to
      t.text :descriptions_expo

      t.timestamps
    end
  end
end
