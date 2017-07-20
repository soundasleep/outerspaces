# This migration comes from railswiki (originally 20170517234452)
class AddRoleToInvite < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_invites, :role, :string, null: false, default: "user"
  end
end
