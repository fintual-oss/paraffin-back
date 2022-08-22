class AddUserToResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :resource_evaluations, :user_id, :integer
  end
end
