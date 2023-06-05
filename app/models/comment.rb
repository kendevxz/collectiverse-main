class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :subcomments, dependent: :destroy
  validates :content, length: { in: 2..400 }, presence: true
end
