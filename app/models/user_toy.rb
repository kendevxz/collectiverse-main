class UserToy < ApplicationRecord
  belongs_to :user
  belongs_to :toy

  validates :toy_id, uniqueness: { scope: :user_id }
end
