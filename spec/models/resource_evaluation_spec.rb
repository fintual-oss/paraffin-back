require 'rails_helper'

RSpec.describe ResourceEvaluation, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_evaluation)).to be_valid
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:resource) }
  end
end
