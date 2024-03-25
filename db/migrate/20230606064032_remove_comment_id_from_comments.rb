class RemoveCommentIdFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :comment, null: false, foreign_key: true
  end
end
