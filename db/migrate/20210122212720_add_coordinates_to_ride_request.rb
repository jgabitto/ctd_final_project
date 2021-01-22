class AddCoordinatesToRideRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :ride_requests, :end_address, :string
    add_column :ride_requests, :end_latitude, :float, :precision => 10, :scale => 6
    add_column :ride_requests, :end_longitude, :float, :precision => 10, :scale => 6
  end
end
