class CreateCurriculumAffiliation < ActiveRecord::Migration[7.0]
  def change
    create_table :curriculum_affiliations do |t|

      t.timestamps
    end
  end
end
