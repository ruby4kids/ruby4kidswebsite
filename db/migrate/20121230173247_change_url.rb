class ChangeUrl < ActiveRecord::Migration
  def up
    rename_column :web_pages, :url, :slug
  end

  def down
    rename_column :web_pages, :slug, :url
  end
end
