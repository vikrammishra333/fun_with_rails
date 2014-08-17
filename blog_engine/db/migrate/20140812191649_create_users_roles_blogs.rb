class CreateUsersRolesBlogs < ActiveRecord::Migration
  def change
    create_table :users_roles_blogs, :id => false do |t|
      t.references :users_role
      t.references :blog
    end
    add_index :users_roles_blogs, :users_role_id
    add_index :users_roles_blogs, :blog_id
    add_index :users_roles_blogs, [:users_role_id, :blog_id], :unique => true
  end
end
