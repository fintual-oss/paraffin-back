class AddCurriculumAffiliationRelationships < ActiveRecord::Migration[7.0]
  def change
    add_reference :curriculum_affiliations, :curriculum, foreign_key: true
    add_reference :curriculum_affiliations, :learning_unit, foreign_key: true
  end
end
