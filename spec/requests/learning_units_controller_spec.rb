require 'rails_helper'
RSpec.describe LearningUnitsController, type: :request do
  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:learning_unit) { create(:learning_unit) }

    before do
      sign_in user
    end

    context 'when accesing to the learning unit page'
    def perform
      get learning_unit_path(learning_unit)
    end

    it 'shows the name of the learning unit' do
      perform
      expect(response.body).to include(learning_unit.name)
    end
  end

  describe 'GET /index' do
    let(:user) { create(:user) }
    let(:curriculum) { create(:curriculum) }
    let(:params) do
      { 'curriculum_id': curriculum.id }
    end

    before do
      sign_in user
    end

    context 'when accesing the curriculum page'
    def perform
      get curriculum_learning_units_path(params)
    end

    it 'shows the name of the curriculum' do
      perform
      expect(response.body).to include(curriculum.name)
    end
  end
end
