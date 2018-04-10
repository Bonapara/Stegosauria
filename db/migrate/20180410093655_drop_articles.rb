class DropArticles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :show_cases, :article, index: true, foreign_key: true
  end
end
