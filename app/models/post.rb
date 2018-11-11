class Post < ApplicationRecord
  LIMIT_AMOUNT = 10

  belongs_to :user

  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }

  scope :newest, -> (n = LIMIT_AMOUNT) { includes(:user).order(updated_at: :desc).limit(n) }
end
