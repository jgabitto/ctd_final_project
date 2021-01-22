class AddColumnsToRideRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :ride_requests, :gps_starting_point, :string
    add_column :ride_requests, :gps_end_point, :string
    add_column :ride_requests, :starting_address, :string
    add_column :ride_requests, :latitude, :float, :precision => 10, :scale => 6
    add_column :ride_requests, :longitude, :float, :precision => 10, :scale => 6
  end
end
