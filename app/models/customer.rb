class Customer < ApplicationRecord
  belongs_to :user
  has_many :ride_requests

  validates :role, presence: true
  validates :user_id, presence: true, uniqueness: true
end
