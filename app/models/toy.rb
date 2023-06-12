class Toy < ApplicationRecord
  belongs_to :category
  has_many :user_toys
  # searchkick
end
