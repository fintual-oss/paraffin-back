require 'rails_helper'

RSpec.describe LearningUnit, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:learning_unit)).to be_valid
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
