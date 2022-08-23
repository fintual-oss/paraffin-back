class CompletedLearningUnit < ApplicationRecord
  belongs_to :users
  belongs_to :learning_units
end
