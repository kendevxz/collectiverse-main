class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :photos
  has_many :comments, dependent: :destroy
  validates :title, length: { in: 3..64 }, presence: true
  validates :content, length: { in: 8..20_000 }, presence: true
  # searchkick
end
