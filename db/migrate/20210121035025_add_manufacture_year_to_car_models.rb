class AddManufactureYearToCarModels < ActiveRecord::Migration[6.0]
  def change
    add_column :car_models, :manufacture_year, :string
  end
end
