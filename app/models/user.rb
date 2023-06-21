class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_one_attached :photo
  has_many :comments, dependent: :destroy
  has_many :user_toys
  has_many :toys, through: :user_toys
  acts_as_voter
  has_many :notifications, as: :recipient, dependent: :destroy

  def increase_karma(count=1)
    update_attribute(:karma, karma + count)
  end

  def decrease_karma(count=1)
    update_attribute(:karma, karma - count)
  end

  def show
    @user = User.find(params[:id])
  end

  validates :username, length: { in: 4..32 }, presence: true,
                      uniqueness: { case_sensitive: false }
  # validates :password, length: { minimum: 8 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # validates :admin_level, numericality: { only_integer: true,
  #                                         less_than_or_equal_to: 3 }
  # validates_numericality_of(:admin_level, only_integer: true, less_than_or_equal_to: 3)

  before_save { username.downcase! }
  before_save { email.downcase! }
  before_save :default_user
  def default_user
    self.admin_level = 1
  end
end
