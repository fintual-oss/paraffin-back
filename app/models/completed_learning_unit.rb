# == Schema Information
#
# Table name: completed_learning_units
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#  learning_unit_id :bigint           not null
#
class CompletedLearningUnit < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
end
