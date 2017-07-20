# This migration comes from railswiki (originally 20170421010945)
class AddRoleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_users, :role, :string

    add_index :railswiki_users, :role
  end
end
