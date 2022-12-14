# == Schema Information
#
# Table name: learning_unit_successions
#
#  id             :bigint           not null, primary key
#  cycle_id       :bigint           not null
#  predecessor_id :bigint           not null
#  successor_id   :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class LearningUnitSuccession < ApplicationRecord
  belongs_to :predecessor, class_name: 'LearningUnit'
  belongs_to :successor, class_name: 'LearningUnit'
  belongs_to :cycle

  validates :cycle, presence: true
  validates :predecessor, presence: true
  validates :successor, presence: true
  validate :different_learning_units_for_succession,
           :learning_units_must_belong_to_cycle

  def different_learning_units_for_succession
    return unless predecessor == successor

    errors.add(:successor, 'Successor has to be different than predecessor')
  end

  def learning_units_must_belong_to_cycle
    return if (
      [predecessor, successor] - (cycle&.learning_units.presence || [])
    ).empty?

    errors.add(:cycle, 'Learning units must belong to the cycle')
  end
end
