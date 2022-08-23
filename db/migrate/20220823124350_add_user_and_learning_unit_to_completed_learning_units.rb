class AddUserAndLearningUnitToCompletedLearningUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :completed_learning_units, :user_id, :integer
    add_column :completed_learning_units, :learning_unit_id, :integer
  end
end
