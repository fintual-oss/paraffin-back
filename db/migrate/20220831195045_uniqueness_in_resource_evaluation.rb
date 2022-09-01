class UniquenessInResourceEvaluation < ActiveRecord::Migration[7.0]
  def change
    add_index :resource_evaluations, [:user_id, :resource_id], unique: true
  end
end
