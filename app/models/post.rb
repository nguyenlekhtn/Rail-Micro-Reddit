class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :link, presence: true, 
    format: { with: /\Ahttps?:\/\//, message: "should have correct format" }
end
