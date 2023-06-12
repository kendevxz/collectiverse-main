class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :photos
  has_many :comments, dependent: :destroy
  validates :title, length: { in: 3..64 }, presence: true
  validates :content, length: { in: 8..20_000 }, presence: true
  acts_as_votable

  include PgSearch::Model
  multisearchable against: [:title, :content]

  def karma
    self.get_upvotes.size - self.get_downvotes.size
  end

  def increase_karma(count=1)
    update_attribute(:karma, karma + count)
  end

  def decrease_karma(count=1)
    update_attribute(:karma, karma - count)
  end

  def show
    @post = Post.find(params[:id])
  end
end
