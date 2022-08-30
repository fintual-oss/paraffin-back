class RemoveCurriculumAffiliationIdFromCurriculums < ActiveRecord::Migration[7.0]
  def change
    remove_column :curriculums, :curriculum_affiliation_id, :integer
  end
end
