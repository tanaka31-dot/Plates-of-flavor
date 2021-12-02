class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :first_name, :last_name, :username, :password_hash, presence: true
    validates :username, uniqueness: true
end
