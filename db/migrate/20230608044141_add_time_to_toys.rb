class AddTimeToToys < ActiveRecord::Migration[7.0]
  def change
    add_column :toys, :time, :time
  end
end
