class RemoveCapacityFromCar < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :capacity, :string
  end
end
