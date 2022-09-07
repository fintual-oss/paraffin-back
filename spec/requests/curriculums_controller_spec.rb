require 'rails_helper'

RSpec.describe CurriculumsController, type: :request do
  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:curriculum) { curriculum_with_learning_units }
    let(:learning_unit) { create(:learning_unit) }

    before do
      sign_in user
    end

    context 'when accesing the curriculum show page' do
      def perform
        get curriculum_path(curriculum)
      end

      it 'redirects to the learning units index page' do
        perform
        expect(perform).to redirect_to(curriculum_learning_units_path(curriculum))
      end
    end
  end
end
