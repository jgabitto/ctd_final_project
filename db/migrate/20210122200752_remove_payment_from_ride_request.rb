class RemovePaymentFromRideRequest < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ride_requests, :payment, null: false, foreign_key: true
  end
end
