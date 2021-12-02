class Direction < ApplicationRecord
  belongs_to :recipe
  validates :direction_content, presence: true
end
