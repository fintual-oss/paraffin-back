class AddLearningUnitToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :learning_unit_id, :integer
  end
end
