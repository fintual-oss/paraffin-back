class AddUserIdToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :user, foreign_key: true
  end
end
