class CreateCycles < ActiveRecord::Migration[7.0]
  def change
    create_table :cycles do |t|
      t.integer :curriculum_id
      t.string :name
      t.text :learning_goals
      t.text :challenge
      t.string :boilerplate_url

      t.timestamps
    end
  end
end
