class AddCommentsToResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :resource_evaluations, :comment, :string
  end
end
