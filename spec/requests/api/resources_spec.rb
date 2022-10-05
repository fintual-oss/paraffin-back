require 'swagger_helper'
require 'rails_helper'

describe 'Resources API' do
  let!(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
    if response.metadata[:create_evaluation]
      create(:resource_evaluation, resource:, user:)
    end
  end

  path '/api/learning_units/{learning_unit_id}/resources' do
    get 'Returns all Resources from a Learning Unit' do
      tags 'Resources'
      produces 'application/json'
      parameter name: :learning_unit_id, in: :path, type: :string
      operationId 'getLearningUnitResources'

      let(:learning_unit_id) { create(:learning_unit).id }

      response '200', 'Success' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   url: { type: :string }
                 }
               },
               required: %w[id name]
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:learning_unit_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/resources/{id}' do
    get 'Returns a Resource info' do
      tags 'Resources'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      operationId 'getResource'

      let(:id) { create(:resource).id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Resource not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/average_evaluation' do
    get 'Returns Resource average evaluation' do
      tags 'Resources'
      parameter name: :resource_id, in: :path, type: :string
      produces 'application/json'
      operationId 'getResourceAverageEvaluation'

      let(:resource) { create(:resource) }
      let(:resource_id) { resource.id }

      response '200', 'Success', create_evaluation: true do
        schema type: :object,
               properties: {
                 average_evaluation: { type: :string }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/evaluation?evaluation={evaluation}' do
    post 'Evaluate a resource' do
      tags 'Resources'
      parameter name: :resource_id, in: :path, type: :string
      parameter name: :evaluation, in: :path, type: :integer
      produces 'application/json'
      operationId 'evaluateResource'

      let(:resource_id) { create(:resource).id }
      let(:evaluation) { 2 }

      response '201', 'Created' do
        schema type: :object,
               properties: {
                 evaluation: { type: :integer },
                 id: { type: :integer },
                 user_id: { type: :integer },
                 resource_id: { type: :integer }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/evaluation' do
    get "Returns current user's resource evaluation" do
      tags 'Resources'
      parameter name: :resource_id, in: :path, type: :string
      produces 'application/json'
      operationId 'getResourceEvaluation'

      let(:resource) { create(:resource) }
      let(:resource_id) { resource.id }

      response '200', 'Success', create_evaluation: true do
        schema type: :object,
               properties: {
                 evaluation: { type: :integer }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end
  end
end
