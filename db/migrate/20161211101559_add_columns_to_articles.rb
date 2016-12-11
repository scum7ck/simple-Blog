class AddColumnsToArticles < ActiveRecord::Migration[5.0]
  def change
  add_column :articles, :image_uid,  :string
  add_column :articles, :image_name, :string
  end
end
