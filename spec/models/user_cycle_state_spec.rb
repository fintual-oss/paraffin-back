require 'rails_helper'

RSpec.describe UserCycleState, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:user_cycle_state)).to be_valid
    end
  end

  describe 'validations' do
    it do
      expect do
        FactoryBot.create(:user_cycle_state,
                          user: nil)
      end.to raise_error ActiveRecord::RecordInvalid
    end

    it do
      expect do
        FactoryBot.create(:user_cycle_state,
                          cycle: nil)
      end.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
