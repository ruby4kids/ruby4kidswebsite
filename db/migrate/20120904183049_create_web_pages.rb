class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :title
      t.text :content
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
