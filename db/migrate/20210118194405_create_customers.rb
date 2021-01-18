class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :role
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
