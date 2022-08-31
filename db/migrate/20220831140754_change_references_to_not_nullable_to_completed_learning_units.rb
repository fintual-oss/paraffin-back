class ChangeReferencesToNotNullableToCompletedLearningUnits < ActiveRecord::Migration[7.0]
  change_column_null :completed_learning_units, :user_id, false
  change_column_null :completed_learning_units, :learning_unit_id, false
end
