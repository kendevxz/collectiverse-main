class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.date :release_date
      t.string :where_to_buy
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
