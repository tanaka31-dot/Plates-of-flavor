class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :ingredient_name, presence: true
end
