# == Schema Information
#
# Table name: learning_unit_successions
#
#  id             :bigint           not null, primary key
#  cycle_id       :bigint           not null
#  predecessor_id :bigint           not null
#  successor_id   :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe LearningUnitSuccession, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:learning_unit_succession)).to be_valid
    end
  end

  describe 'validations' do
    let(:cycle) { create(:cycle) }
    let(:predecessor) { create(:learning_unit, cycles: [cycle]) }
    let(:successor) { create(:learning_unit, cycles: [cycle]) }

    it { is_expected.to validate_presence_of(:cycle) }

    it { is_expected.to validate_presence_of(:predecessor) }

    it { is_expected.to validate_presence_of(:successor) }

    it do
      expect do
        FactoryBot.create(
          :learning_unit_succession, cycle:, predecessor: successor, successor:
        )
      end.to raise_error ActiveRecord::RecordInvalid
    end

    it do
      expect do
        FactoryBot.create(
          :learning_unit_succession, predecessor:, successor:
        )
      end.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
