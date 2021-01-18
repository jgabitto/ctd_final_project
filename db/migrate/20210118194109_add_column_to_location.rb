class AddColumnToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :location, :string
  end
end
