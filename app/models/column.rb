class Column < ApplicationRecord
  belongs_to :board
  has_many :cards
  validates :background_color, presence: true
end
