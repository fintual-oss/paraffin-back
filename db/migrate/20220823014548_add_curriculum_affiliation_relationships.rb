class AddCurriculumAffiliationRelationships < ActiveRecord::Migration[7.0]
  def change
    add_column :curriculum_affiliations, :curriculum_id, :integer
    add_column :curriculum_affiliations, :learning_unit_id, :integer
  end
end

