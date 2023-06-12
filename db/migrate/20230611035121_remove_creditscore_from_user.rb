class RemoveCreditscoreFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :creditscore, :integer
  end
end
