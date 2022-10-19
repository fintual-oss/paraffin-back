class CreateCycleLearningUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :cycle_learning_units do |t|
      t.integer :cycle_id
      t.integer :learning_unit_id

      t.timestamps
    end
  end
end
