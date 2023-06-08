class Subcomment < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  validates :content, length: { in: 2..400 }, presence: true
end
