# This migration comes from railswiki (originally 20170420235420)
class AddEmailAndImageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_users, :email, :string
    add_column :railswiki_users, :image_url, :string

    add_index :railswiki_users, :email, :unique => true
  end
end
