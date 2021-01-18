class RideRequest < ApplicationRecord
  belongs_to :customer
  belongs_to :driver
  belongs_to :payment
end
