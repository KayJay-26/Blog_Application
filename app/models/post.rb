class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_one_attached :cover_image
  has_many :likes, dependent: :destroy
end
