class CreateLearningUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :learning_units do |t|
      t.string :name
      t.timestamps
    end
  end
end
