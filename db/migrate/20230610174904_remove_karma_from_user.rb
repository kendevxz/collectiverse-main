class RemoveKarmaFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :karma, :integer
  end
end
