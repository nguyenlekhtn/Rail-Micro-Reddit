class User < ApplicationRecord
  has_many :posts
  validates :username, uniqueness: true, length: { in: 4..12 }, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { in: 6..16 }

  validates_associated :posts
end
