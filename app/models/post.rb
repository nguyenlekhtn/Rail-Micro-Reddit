class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :link, presence: true, 
    format: { with: /\Ahttps?:\/\//, message: "should have correct format" }
end
