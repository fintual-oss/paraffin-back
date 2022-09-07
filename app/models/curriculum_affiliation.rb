# == Schema Information
#
# Table name: curriculum_affiliations
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  curriculum_id    :bigint
#  learning_unit_id :bigint
#
class CurriculumAffiliation < ApplicationRecord
  belongs_to :curriculum
  belongs_to :learning_unit
end
