class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :dragonfly_images, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  dragonfly_accessor :image
  has_attached_file :picture, styles: { large: "600x600>", medium: "300x300", thumb: "150x150#"}
  validates_attachment_content_type :picture, content_type: /\Aimage\.*\Z/
end
