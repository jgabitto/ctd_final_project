class CreateRideRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :ride_requests do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.time :request_start_time
      t.time :ride_start_time
      t.time :ride_end_time
      t.point :gps_starting_point
      t.point :gps_end_point
      t.boolean :cancelled
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
