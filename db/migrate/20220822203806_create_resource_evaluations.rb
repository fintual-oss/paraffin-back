class CreateResourceEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :resource_evaluations do |t|
      t.integer :evaluation
      t.timestamps
    end
  end
end
