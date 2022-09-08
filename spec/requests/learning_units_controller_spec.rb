require 'rails_helper'

RSpec.describe LearningUnitsController, type: :request do
  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:learning_unit) { create(:learning_unit) }

    before do
      sign_in user
    end

    def perform
      get learning_unit_path(learning_unit)
    end

    context 'when accesing to the learning unit page' do
      let!(:resource) { create(:resource, user:, learning_unit:) }

      it 'shows the name of the learning unit' do
        perform
        expect(response.body).to include(learning_unit.name)
      end

      it 'shows the name of the resource' do
        perform
        expect(response.body).to match(resource.name)
      end
    end

    context 'when there are no resources' do
      it do
        perform
        expect(response.body).to include('There are no resources yet')
      end
    end
  end

  describe 'GET /index' do
    let(:user) { create(:user) }
    let(:curriculum) { curriculum_with_learning_units(learning_units_count: 7) }
    let(:params) do
      { 'curriculum_id': curriculum.id }
    end

    before do
      sign_in user
    end

    context 'when accesing the curriculum page' do
      def perform
        get curriculum_learning_units_path(params)
      end

      it 'shows the name of the curriculum' do
        perform
        expect(response.body).to match(curriculum.name)
      end

      it 'shows the name of the learning units' do
        perform
        expect(response.body).to match(curriculum.learning_units.first.name)
      end
    end
  end
end
