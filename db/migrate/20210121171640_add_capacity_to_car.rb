class AddCapacityToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :capacity, :string
  end
end
