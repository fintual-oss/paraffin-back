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
require 'rails_helper'

RSpec.describe CycleLearningUnit, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:cycle_learning_unit)).to be_valid
    end
  end

  describe 'validations' do
    it do
      expect do
        FactoryBot.create(:cycle_learning_unit,
                          cycle_id: nil)
      end.to raise_error ActiveRecord::RecordInvalid
    end

    it do
      expect do
        FactoryBot.create(:cycle_learning_unit,
                          learning_unit_id: nil)
      end.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
