require 'rails_helper'

RSpec.describe LearningUnits::DisplayUserLearningUnit do
  let(:curriculum) { create(:curriculum, name: 'curriculum') }
  let(:user) { create(:user) }
  let!(:learning_unit) { create(:learning_unit) }

  let(:service) { described_class.new(curriculum, user) }

  describe '#user_learning_units' do
    context 'when there are no learning_units in curriculum' do
      it do
        expect(service.user_learning_units).to be_empty
      end
    end

    context 'when there are learning_units in curriculum' do
      before { create(:curriculum_affiliation, learning_unit:, curriculum:) }

      it do
        expect(service.user_learning_units).not_to be_empty
      end
    end

    context 'when there are no completed_learning_units for a learning_unit' do
      before { create(:curriculum_affiliation, learning_unit:, curriculum:) }

      it do
        expect(service.user_learning_units[0][:completed_by_user]).to be_nil
      end
    end

    context 'when there is a completed_learning_unit for a learning_unit' do
      before do
        create(:curriculum_affiliation, learning_unit:, curriculum:)
        create(:completed_learning_unit, user:, learning_unit:)
      end

      it do
        expect(service.user_learning_units[0][:completed_by_user]).to be_truthy
      end
    end
  end
end
