class CreateLearningUnitSuccessions < ActiveRecord::Migration[7.0]
  def change
    create_table :learning_unit_successions do |t|
      t.references :cycle, null: false, foreign_key: true
      t.references :predecessor,
                   null: false,
                   foreign_key: { to_table: 'learning_units' }
      t.references :successor,
                   null: false,
                   foreign_key: { to_table: 'learning_units' }
      t.timestamps
    end

  add_check_constraint :learning_unit_successions,
                       'learning_unit_successions.predecessor_id != learning_unit_successions.successor_id',
                       name: 'different_learning_units_for_succession'
  end
end
