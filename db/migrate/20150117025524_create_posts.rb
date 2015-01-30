class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, limit: 300
      t.string :link
      t.string :slug, unique: true
      t.text :text, limit: 15000
      t.integer :upvotes, null: false, default: 0
      t.integer :downvotes, null: false, default: 0
      t.integer :user_id
      t.integer :subgeddit_id
      t.timestamps null: false
    end
  end
end
