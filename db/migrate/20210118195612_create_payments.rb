class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :credit_card_type
      t.decimal :price, precision: 10, scale: 2
      t.string :billing_address

      t.timestamps
    end
  end
end
