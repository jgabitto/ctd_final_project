class Customer < ApplicationRecord
  belongs_to :user

  validates :role, presence: true
  validates :user_id, presence: true, uniqueness: true
end
