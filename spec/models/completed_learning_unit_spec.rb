require 'rails_helper'

RSpec.describe CompletedLearningUnit, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:completed_learning_unit)).to be_valid
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:learning_unit) }
  end
end
