class AddRoles < ActiveRecord::Migration[5.1]
  def up
    add_column :admin_users, :role, :string
  end

  def down
    remove_column :admin_users, :role
  end
end
