class CreateBlogsUsersTable < ActiveRecord::Migration
  def up
    create_table :blogs_users, :id => false do |t|
        t.references :blog
        t.references :user
    end
    add_index :blogs_users, [:blog_id, :user_id], :unique => true
    add_index :blogs_users, :user_id
  end

  def down
    drop_table :blogs_users
  end
end
