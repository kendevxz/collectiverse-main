class AddUserReferenceToSubcomments < ActiveRecord::Migration[7.0]
  def change
    add_reference :subcomments, :user, null: false, foreign_key: true
  end
end
