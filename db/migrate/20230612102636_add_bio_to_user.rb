class AddBioToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :string, :default => "This user is either lazy or enjoying their toys too much at this point."
  end
end
