class AddColumnToCarModels < ActiveRecord::Migration[6.0]
  def change
    add_column :car_models, :car_model_name, :string
  end
end
