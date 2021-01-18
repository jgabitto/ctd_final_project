class RemoveColumnFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :content, :string
  end
end
