class CurriculumAffiliation < ApplicationRecord
  belongs_to :curriculum
  belongs_to :learning_unit
end
