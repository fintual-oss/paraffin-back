class CreateCycles < ActiveRecord::Migration[7.0]
  def change
    create_table :cycles do |t|
      t.integer :curriculum_id
      t.string :name, null: false
      t.integer :order_number, null:false
      t.text :learning_goals_description, null: false
      t.text :challenge_description, null: false
      t.string :boilerplate_url

      t.timestamps
    end
  end
end
