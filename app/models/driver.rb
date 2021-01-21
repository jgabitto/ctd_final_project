class Driver < ApplicationRecord
  belongs_to :user
  has_many :cars

  validates :working, presence: true
  validates :role, presence: true
  validates :user_id, presence: true, uniqueness: true
end
