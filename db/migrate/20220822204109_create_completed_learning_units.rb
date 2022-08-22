class CreateCompletedLearningUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_learning_units do |t|
      t.boolean :is_completed
      t.timestamps
    end
  end
end
