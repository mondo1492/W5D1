class RemoveNullConstraints < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :url, :string
    change_column :posts, :content, :text
  end
end
