class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :author_id, default: 1

      t.timestamps null: false
    end
  end
end
