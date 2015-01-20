class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :slug
      t.string :text
      t.integer :upvotes
      t.integer :downvotes
      t.integer :user_id
      t.integer :subgeddit_id
      t.timestamps null: false
    end
  end
end
