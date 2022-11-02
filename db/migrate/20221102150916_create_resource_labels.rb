class CreateResourceLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :resource_labels do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps
    end
  end
end
