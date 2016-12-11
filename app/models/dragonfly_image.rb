class DragonflyImage < ApplicationRecord
  belongs_to :article
  dragonfly_accessor :asset
end
