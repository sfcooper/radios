class AddSlugToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :slug, :string
  end
end
