class Cycle < ApplicationRecord
  belongs_to :curriculum
  has_many :cycle_learning_units
  has_many :learning_units, through: :cycle_learning_units
end
