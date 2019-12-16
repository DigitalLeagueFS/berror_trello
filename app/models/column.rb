class Column < ApplicationRecord
  belongs_to :board
  validates :background_color, presence: true
end
