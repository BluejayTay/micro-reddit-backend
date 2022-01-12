class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 100}

  belongs_to :user
  has_many :comments
end
