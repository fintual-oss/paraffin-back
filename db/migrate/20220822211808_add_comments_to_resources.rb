class AddCommentsToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resource_comments, :resource_id, :integer
  end
end
