class RemoveColumnsFromRideRequest < ActiveRecord::Migration[6.0]
  def change
    remove_column :ride_requests, :gps_starting_point, :point
    remove_column :ride_requests, :gps_end_point, :point
  end
end
