class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :name, null: false
      t.string :icon, null: false

      t.timestamps
    end
  end
end
