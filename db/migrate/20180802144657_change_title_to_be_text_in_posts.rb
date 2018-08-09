class ChangeTitleToBeTextInPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :title, :text
  end
end
