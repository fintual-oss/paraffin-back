class RemoveCurriculumAffiliationIdFromLearningUnits < ActiveRecord::Migration[7.0]
  def change
    remove_column :learning_units, :curriculum_affiliation_id, :integer
  end
end
