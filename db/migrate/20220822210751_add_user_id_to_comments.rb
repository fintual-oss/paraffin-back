class AddUserIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :resource_comments, :user_id, :integer
  end
end
