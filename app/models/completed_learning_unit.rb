class CompletedLearningUnit < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
end
