class AddUserToResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_reference :resource_evaluations, :user, foreign_key: true
  end
end
