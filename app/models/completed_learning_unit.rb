class CompletedLearningUnit < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit

  validates :user, presence: true
  validates :learning_unit, presence: true
end
