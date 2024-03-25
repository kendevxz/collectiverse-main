class AddKarmaToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :karma, :integer
  end
end
