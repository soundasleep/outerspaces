# This migration comes from railswiki (originally 20170421030140)
class AddTitleToUploadedFile < ActiveRecord::Migration[5.0]
  def change
    add_column :railswiki_uploaded_files, :title, :string
  end
end
