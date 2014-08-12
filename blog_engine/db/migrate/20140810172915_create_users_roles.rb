class CreateUsersRoles < ActiveRecord::Migration
  def change
    create_table :users_roles do |t|
      t.references :user, :null => false
      t.references :role, :null => false
      t.boolean :active, :default => false

      t.timestamps
    end

    add_index(:users_roles, [:user_id, :role_id], :unique => true)
  end
end
