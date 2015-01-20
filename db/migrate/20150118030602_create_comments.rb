class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id
      t.integer :post_id
      t.integer :comment_id
      t.integer :upvotes
      t.integer :downvotes
      t.timestamps null: false
    end
  end
end
