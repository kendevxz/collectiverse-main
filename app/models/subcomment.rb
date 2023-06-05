class Subcomment < ApplicationRecord
  belongs_to :comment
  validates :content, length: { in: 2..400 }, presence: true
end
