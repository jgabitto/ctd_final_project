class RemoveColumnFromDriver < ActiveRecord::Migration[6.0]
  def change
    remove_column :drivers, :users_id, :string
  end
end
