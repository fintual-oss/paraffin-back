class CreateResourceComments < ActiveRecord::Migration[7.0]
  def change
    create_table :resource_comments do |t|
      t.text :content
      t.timestamps
    end
  end
end
