class Curriculum < ApplicationRecord
  has_many :curriculum_affiliations
  has_many :learning_units, through: :curriculum_affiliations

  validates :name, presence: true
end
