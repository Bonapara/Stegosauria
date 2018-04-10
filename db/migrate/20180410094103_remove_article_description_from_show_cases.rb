class RemoveArticleDescriptionFromShowCases < ActiveRecord::Migration[5.1]
  def change
    remove_column :show_cases, :article_description, :string
  end
end
