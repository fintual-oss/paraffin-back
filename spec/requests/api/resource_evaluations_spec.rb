require 'swagger_helper'
require 'rails_helper'

describe 'Resource Evaluations API' do
  let!(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
  end

  path '/api/resources/{resource_id}/resource_evaluations' do
    get 'Returns all Resource Evaluations' do
      tags 'Resource Evaluations'
      produces 'application/json'
      parameter name: :resource_id, in: :path, type: :string
      operationId 'getResourceEvaluations'
      let(:resource) { create(:resource) }
      let(:resource_id) { resource.id }
      let(:resource_evaluation) { create(:resource_evaluation, user:) }

      response '200', 'Success' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   evaluation: { type: :integer },
                   resource_id: { type: :string },
                   user_id: { type: :integer },
                   user_name: { type: :string },
                   comment: { type: :string },
                   created_at: { type: :string }
                 }
               },
               required: %w[id evaluation]
        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end
  end
end
