class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.references :users, null: false, foreign_key: true
      t.boolean :working
      t.string :role

      t.timestamps
    end
  end
end
