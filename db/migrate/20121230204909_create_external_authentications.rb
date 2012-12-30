class CreateExternalAuthentications < ActiveRecord::Migration
  def change
    create_table :external_authentications do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id

      t.timestamps
    end
  end
end