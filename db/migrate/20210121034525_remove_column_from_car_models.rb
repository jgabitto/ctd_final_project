class RemoveColumnFromCarModels < ActiveRecord::Migration[6.0]
  def change
    remove_column :car_models, :model_name, :string
  end
end
