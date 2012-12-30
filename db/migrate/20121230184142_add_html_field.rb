class AddHtmlField < ActiveRecord::Migration
  def up
    add_column :web_pages, :html, :text
  end

  def down
    remove_column :web_pages, :html
  end
end
