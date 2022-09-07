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
require 'rails_helper'

RSpec.describe CompletedLearningUnit, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:completed_learning_unit)).to be_valid
    end
  end
end
