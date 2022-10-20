class CreateCycleLearningUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :cycle_learning_units do |t|
      t.integer :cycle_id, null: false
      t.integer :learning_unit_id, null: false

      t.timestamps
    end
  end
end
