class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :text
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end

    add_index :posts, :user_id
    add_index :posts, :group_id
  end
end