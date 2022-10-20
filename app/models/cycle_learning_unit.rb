# == Schema Information
#
# Table name: cycle_learning_units
#
#  id               :bigint           not null, primary key
#  cycle_id         :integer          not null
#  learning_unit_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class CycleLearningUnit < ApplicationRecord
  belongs_to :cycle
  belongs_to :learning_unit
end
