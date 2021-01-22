class RemoveCustomerIdFromRideRequest < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ride_requests, :customer, null: false, foreign_key: true
  end
end
