class DropSubcommentsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :subcomments do |t|
      t.string "content"
      t.bigint "comment_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.bigint "user_id", null: false
      t.index ["comment_id"], name: "index_subcomments_on_comment_id"
      t.index ["user_id"], name: "index_subcomments_on_user_id"
    end
  end
end
