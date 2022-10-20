# == Schema Information
#
# Table name: cycle_learning_units
#
#  id               :bigint           not null, primary key
#  cycle_id         :integer
#  learning_unit_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'rails_helper'

RSpec.describe CycleLearningUnit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
