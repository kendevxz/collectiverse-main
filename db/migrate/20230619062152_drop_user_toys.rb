class DropUserToys < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_toys do |t|
      t.bigint "user_id", null: false
      t.bigint "toy_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["toy_id"], name: "index_user_toys_on_toy_id"
      t.index ["user_id"], name: "index_user_toys_on_user_id"
    end
  end
end
