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
