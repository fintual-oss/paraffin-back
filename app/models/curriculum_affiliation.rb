class CurriculumAffiliation < ApplicationRecord
  belongs_to :curriculum
  belongs_to :learning_unit

  validates :curriculum, presence: true
  validates :learning_unit, presence: true
end
