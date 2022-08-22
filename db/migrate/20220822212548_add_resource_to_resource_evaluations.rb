class AddResourceToResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :resource_evaluations, :resource_id, :integer
  end
end
