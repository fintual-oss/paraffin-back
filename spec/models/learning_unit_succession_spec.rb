require 'rails_helper'

RSpec.describe LearningUnitSuccession, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:learning_unit_succession)).to be_valid
    end
  end

  describe 'validations' do
    let(:learning_unit) { create(:learning_unit) }

    it { is_expected.to validate_presence_of(:cycle) }

    it { is_expected.to validate_presence_of(:predecessor) }

    it { is_expected.to validate_presence_of(:successor) }

    it do
      expect do
        FactoryBot.create(:learning_unit_succession,
                          predecessor: learning_unit,
                          successor: learning_unit)
      end.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
