class AddColumnsToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :latitude, :float, :precision => 10, :scale => 6
    add_column :locations, :longitude, :float, :precision => 10, :scale => 6
  end
end
