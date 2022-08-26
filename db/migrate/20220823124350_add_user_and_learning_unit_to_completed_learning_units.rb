class AddUserAndLearningUnitToCompletedLearningUnits < ActiveRecord::Migration[7.0]
  def change
    add_reference :completed_learning_units, :user, foreign_key: true
    add_reference :completed_learning_units, :learning_unit, foreign_key: true
  end
end
