class CreateUserCycleStates < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cycle_states do |t|
      t.references :cycle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :repository_link
      t.timestamp :completed_at
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
