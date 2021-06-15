class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates :body, length: { maximum: 200}

  def favorited_by?(user,book)
    Favorite.where(user_id: user.id, book_id: book.id).exists?
  end
end
