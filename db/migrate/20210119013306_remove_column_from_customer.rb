class RemoveColumnFromCustomer < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :users_id, :string
  end
end
