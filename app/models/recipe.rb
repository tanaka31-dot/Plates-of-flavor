class Recipe < ApplicationRecord
  attr_accessor :author
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_one_attached :image
  has_many :ingredients, dependent: :destroy
  has_many :directions, dependent: :destroy
  validates :recipe_name, presence: true
  validates :image, presence: true

  def author=(user)
    self.users << user
  end

  def author
    self.users[0]
  end

end
