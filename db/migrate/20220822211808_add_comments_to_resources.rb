class AddCommentsToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resource_comments, :resource, foreign_key: true
  end
end
