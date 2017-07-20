# This migration comes from railswiki (originally 20170420021039)
class AddLowercaseTitleToPage < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_pages, :lowercase_title, :string, null: false, unique: true
  end
end
