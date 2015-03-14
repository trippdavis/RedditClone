class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :author_id, null: false
      t.text :content
      t.string :url

      t.timestamps null: false
    end
    add_index :posts, :author_id
    add_index :posts, :url, unique: true
  end
end
