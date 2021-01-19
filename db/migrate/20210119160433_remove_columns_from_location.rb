class RemoveColumnsFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :latitude, :string
    remove_column :locations, :longitude, :string
  end
end
