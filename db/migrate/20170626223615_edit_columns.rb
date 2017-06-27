class EditColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :url
    remove_column :posts, :content

    add_column :posts, :url, :string
    add_column :posts, :content, :text
  end
end
