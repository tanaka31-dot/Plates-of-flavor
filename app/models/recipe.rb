class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :recipe_name, presence: true
end
