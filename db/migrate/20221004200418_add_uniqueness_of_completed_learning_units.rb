class AddUniquenessOfCompletedLearningUnits < ActiveRecord::Migration[7.0]
  def change
    remove_index :completed_learning_units, :user_id
    remove_index :completed_learning_units, :learning_unit_id
    add_index :completed_learning_units, [:user_id, :learning_unit_id], unique: true
  end
end
