class AddResourceToResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_reference :resource_evaluations, :resource, foreign_key: true
  end
end
