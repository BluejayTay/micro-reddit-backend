class User < ApplicationRecord
  validates :username, uniqueness: true, length: { in: 4..20 }, presence: true
  validates :password, length: {minimum: 6 }, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
