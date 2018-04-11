class AddPhotoToActus < ActiveRecord::Migration[5.1]
  def change
    add_column :actus, :photo, :string
  end
end
