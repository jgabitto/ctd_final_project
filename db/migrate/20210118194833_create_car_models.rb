class CreateCarModels < ActiveRecord::Migration[6.0]
  def change
    create_table :car_models do |t|
      t.string :model_name
      t.string :model_description
      t.date :manufacture_year

      t.timestamps
    end
  end
end
