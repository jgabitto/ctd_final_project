class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :license_plate
      t.string :car_type
      t.references :driver, null: false, foreign_key: true
      t.references :car_model, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
