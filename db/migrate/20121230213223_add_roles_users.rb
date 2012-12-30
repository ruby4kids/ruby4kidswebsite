class AddRolesUsers < ActiveRecord::Migration
  def up
    create_table :roles_users, :index => false do |t|
      t.integer :role_id
      t.integer :user_id
    end
  end

  def down
    drop_table :roles_users
  end
end
