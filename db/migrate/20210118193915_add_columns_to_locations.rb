class AddColumnsToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :latitude, :point
    add_column :locations, :longitude, :point
  end
end
