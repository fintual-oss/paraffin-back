require 'rails_helper'

RSpec.describe CompletedLearningUnit, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:completed_learning_unit)).to be_valid
    end
  end

  context 'when has valid attributes' do
    let(:completed_learning_unit) do
      build :completed_learning_unit,
            user: build(:user),
            learning_unit: build(:learning_unit)
    end

    it do
      expect(completed_learning_unit).to be_valid
    end
  end

  context 'when has has no user_id' do
    let(:completed_learning_unit) do
      build :completed_learning_unit,
            user: nil
    end

    it do
      expect(completed_learning_unit).not_to be_valid
    end
  end

  context 'when has has no learning_unit_id' do
    let(:completed_learning_unit) do
      build :completed_learning_unit,
            learning_unit: nil
    end

    it do
      expect(completed_learning_unit).not_to be_valid
    end
  end
end
