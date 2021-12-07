require 'bcrypt'
class User < ApplicationRecord
    include BCrypt

    validates :first_name, :last_name, :username, :password_hash, presence: true
    validates :username, uniqueness: true
    has_many :likes, dependent: :destroy
    has_many :recipes, through: :likes
    has_one_attached :image

    def password
        @password ||= Password.new(password_hash)
    end
    
    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end
    
    def full_name
        "#{first_name} #{last_name}"
    end

    def profile_image
        if self.image.attached?
            self.image
        else
            "prof.jpg"
        end
    end
end
