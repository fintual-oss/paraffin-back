class RemoveColumnIsCompletedFromCompletedLearningUnit < ActiveRecord::Migration[7.0]
  change_table :completed_learning_units do |t|
    t.remove :is_completed
  end
end
