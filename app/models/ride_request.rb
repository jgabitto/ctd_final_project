class RideRequest < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  # belongs_to :payment
end
