class LearningUnit < ApplicationRecord
  has_many :resources
  has_many :curriculum_affiliations
  has_many :curriculums, through: :curriculum_affiliations
end