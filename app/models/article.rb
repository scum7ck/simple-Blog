class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :dragonfly_images, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  dragonfly_accessor :image
end
