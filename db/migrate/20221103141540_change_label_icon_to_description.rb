class ChangeLabelIconToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :labels, :icon, :description
  end
end
