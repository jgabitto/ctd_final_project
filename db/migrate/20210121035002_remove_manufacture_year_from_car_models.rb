class RemoveManufactureYearFromCarModels < ActiveRecord::Migration[6.0]
  def change
    remove_column :car_models, :manufacture_year, :string
  end
end
