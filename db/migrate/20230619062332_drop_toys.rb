class DropToys < ActiveRecord::Migration[7.0]
  def change
    drop_table :toys do |t|
      t.string "name"
      t.date "release_date"
      t.string "where_to_buy"
      t.bigint "category_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.time "time"
      t.string "image_url"
      t.index ["category_id"], name: "index_toys_on_category_id"
    end
  end
end
