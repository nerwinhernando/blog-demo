class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum:5, maximum:40 }
  validates :body, presence: true, length: { minimum:8, maximum:40 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end
