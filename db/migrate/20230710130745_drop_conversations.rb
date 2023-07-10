class DropConversations < ActiveRecord::Migration[7.0]
  def change
    drop_table :conversations do |t|
      t.integer "sender_id"
      t.integer "recipient_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
