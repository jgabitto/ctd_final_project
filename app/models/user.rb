class User < ApplicationRecord
    has_secure_password

    has_one :location
    has_one :customer
    has_one :driver

    validates :birth_date, presence: true
    validates :phone, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
    validates :password, presence: true, length: { minimum: 6 }, on: :create
end
