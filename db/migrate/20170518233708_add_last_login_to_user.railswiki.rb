# This migration comes from railswiki (originally 20170421000333)
class AddLastLoginToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_users, :last_login, :timestamp
  end
end
