class AddUserIdToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :user_id, :integer
  end
end
