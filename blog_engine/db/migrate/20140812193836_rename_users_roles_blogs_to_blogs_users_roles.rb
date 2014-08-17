class RenameUsersRolesBlogsToBlogsUsersRoles < ActiveRecord::Migration
  def up
    rename_table :users_roles_blogs, :blogs_users_roles
  end

  def down
    rename_table :blogs_users_roles, :users_roles_blogs
  end
end
