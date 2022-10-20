class LearningUnitSuccession < ApplicationRecord
  belongs_to :predecessor, class_name: 'LearningUnit'
  belongs_to :successor, class_name: 'LearningUnit'
  belongs_to :cycle

  validate :different_learning_units_for_succession
  validates :cycle, presence: true
  validates :predecessor, presence: true
  validates :successor, presence: true

  def different_learning_units_for_succession
    return unless predecessor == successor

    errors.add(:successor, 'Successor has to be different than predecessor')
  end
end
