# This migration comes from railswiki (originally 20170420000841)
class CreateRailswikiPages < ActiveRecord::Migration[5.0]
  def change
    create_table :railswiki_pages do |t|
      t.string :title, null: false, unique: true
      t.integer :latest_version_id, null: true, index: true

      t.timestamps
    end
  end
end
