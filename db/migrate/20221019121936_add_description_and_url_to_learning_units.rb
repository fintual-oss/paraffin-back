class AddDescriptionAndUrlToLearningUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :learning_units, :description, :string
    add_column :learning_units, :image_url, :string
  end
end
