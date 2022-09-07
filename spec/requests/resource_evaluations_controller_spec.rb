require 'rails_helper'

RSpec.describe ResourceEvaluationsController, type: :request do
  describe 'POST /create' do
    let(:user) { create(:user) }
    let(:resource) { create(:resource, user:) }
    let(:params) do
      { 'resource_id': resource.id, 'resource_evaluations':
        { 'evaluation': 3 } }
    end

    def perform
      post resource_resource_evaluations_path(params)
    end

    before do
      sign_in user
    end

    context 'when trying to create an existing evaluation' do
      before do
        create(:resource_evaluation, user:, resource:, evaluation: 4)
      end

      it 'updates the evaluation value' do
        perform
        expect(ResourceEvaluation
               .find_by(user_id: user.id, resource_id: resource.id)
               .evaluation).to eq(3)
      end

      it "doesn't create a new object in the database" do
        expect { perform }.not_to change(ResourceEvaluation, :count)
      end

      it 'shows the new evaluation value' do
        perform
        follow_redirect!
        expect(response.body).to include('Your current evaluation is 3')
      end
    end

    context 'when trying to create a new evaluation' do
      it "doesn't display any previous evaluation for this user-resource" do
        get learning_unit_resource_path(resource.learning_unit, resource)
        expect(response.body).not_to include('Your current evaluation is')
      end

      it 'creates a new object in the database' do
        expect { perform }.to change(ResourceEvaluation, :count).by(1)
      end

      it 'displays the new evaluation' do
        perform
        follow_redirect!
        expect(response.body).to include('Your current evaluation is 3')
      end
    end
  end
end
