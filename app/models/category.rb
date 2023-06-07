class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, length: { in: 3..32 }, presence: true,
                   uniqueness: { case_sensitive: false }
  before_save { name.downcase! }
  has_one_attached :photo
  searchkick
end
