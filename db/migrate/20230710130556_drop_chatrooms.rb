class DropChatrooms < ActiveRecord::Migration[7.0]
  def change
    drop_table :chatrooms do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
