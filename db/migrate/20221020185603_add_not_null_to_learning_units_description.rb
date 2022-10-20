class AddNotNullToLearningUnitsDescription < ActiveRecord::Migration[7.0]
  def change
    change_column_null :learning_units, :description, false
  end
end
