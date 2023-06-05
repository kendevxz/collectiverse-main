class Toy < ApplicationRecord
  belongs_to :category
  searchkick
end
