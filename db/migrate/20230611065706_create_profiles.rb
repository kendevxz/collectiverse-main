class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :display_name
      t.string :bio

      t.timestamps
    end
  end
end
