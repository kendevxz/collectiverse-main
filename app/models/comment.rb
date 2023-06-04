class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment, optional: true
  has_many :comments, dependent: :destroy
  validates :content, length: { in: 2..400 }, presence: true
end
