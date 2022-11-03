class AddUniquenessOfCompletedResources < ActiveRecord::Migration[7.0]
  def change
    remove_index :completed_resources, :user_id
    remove_index :completed_resources, :resource_id
    add_index :completed_resources, [:user_id, :resource_id], unique: true
  end
end
