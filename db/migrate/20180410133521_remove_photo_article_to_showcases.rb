class RemovePhotoArticleToShowcases < ActiveRecord::Migration[5.1]
  def change
    remove_column :show_cases, :photo_article, :string
  end
end
