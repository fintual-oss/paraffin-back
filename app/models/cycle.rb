# == Schema Information
#
# Table name: cycles
#
#  id              :bigint           not null, primary key
#  curriculum_id   :integer
#  name            :string
#  learning_goals  :text
#  challenge       :text
#  boilerplate_url :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Cycle < ApplicationRecord
  belongs_to :curriculum
  has_many :cycle_learning_units
  has_many :learning_units, through: :cycle_learning_units
end
