require 'rails_helper'

RSpec.describe CompletedLearningUnitsController, type: :request do
  describe 'POST /create' do
    let(:user) { create(:user) }
    let(:curriculum) { create(:curriculum) }
    let(:learning_unit) { create(:learning_unit) }

    before do
      create(:curriculum_affiliation, curriculum:, learning_unit:)
      sign_in user
    end

    context 'when marking a learning unit as completed' do
      def perform
        post learning_unit_completed_learning_units_path(
          learning_unit_id: learning_unit.id
        )
      end

      it 'creates a new record in CompletedLearningUnits' do
        expect { perform }.to change(CompletedLearningUnit, :count).by(1)
      end

      it 'redirects to curriculum page' do
        expect(perform).to redirect_to(
          root_path
        )
      end

      it 'shows a new button with a completed message' do
        perform
        follow_redirect!
        follow_redirect!
        expect(response.body).to include('Completed')
      end
    end
  end

  describe 'DELETE /destroy' do
    let(:user) { create(:user) }
    let!(:curriculum) { create(:curriculum) }
    let!(:learning_unit) { create(:learning_unit) }
    let!(:completed_learning_unit) do
      create(
        :completed_learning_unit,
        user:,
        learning_unit:
      )
    end

    before do
      create(:curriculum_affiliation, curriculum:, learning_unit:)
      sign_in user
    end

    def perform
      delete learning_unit_completed_learning_unit_path(
        learning_unit_id: learning_unit.id,
        id: completed_learning_unit
      )
    end

    it 'deletes a record in CompletedLearningUnits' do
      expect { perform }.to change(CompletedLearningUnit, :count).by(-1)
    end

    it 'redirects to curriculum page' do
      expect(perform).to redirect_to(
        root_path
      )
    end

    it 'shows a new button with a not completed message' do
      perform
      follow_redirect!
      follow_redirect!
      expect(response.body).to include('Not completed')
    end
  end
end
