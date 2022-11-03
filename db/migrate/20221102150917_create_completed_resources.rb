class CreateCompletedResources < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_resources do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
