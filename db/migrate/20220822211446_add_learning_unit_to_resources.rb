class AddLearningUnitToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :learning_unit, foreign_key: true
  end
end
