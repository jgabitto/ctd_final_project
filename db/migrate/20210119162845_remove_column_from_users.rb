class RemoveColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role, :string
  end
end
