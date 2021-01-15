class User < ApplicationRecord
    has_secure_password

    has_many :locations

    validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    validates :password, presence: true, length: { minimum: 6 }
end
