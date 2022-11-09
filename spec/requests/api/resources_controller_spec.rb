require 'swagger_helper'
require 'rails_helper'

describe 'Resources API' do
  let!(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
    if response.metadata[:create_evaluation]
      create(:resource_evaluation, resource:, user:, evaluation: 3)
    end
    if response.metadata[:create_completed_resource]
      create(
        :completed_resource,
        user:,
        resource:
      )
    end
  end

  path '/api/learning_units/{learning_unit_id}/resources' do
    get 'Returns all Resources from a Learning Unit' do
      tags 'Resources'
      produces 'application/json'
      parameter name: :learning_unit_id, in: :path, type: :string
      operationId 'getLearningUnitResources'

      let(:learning_unit) { create(:learning_unit) }
      let(:learning_unit_id) { learning_unit.id }
      let(:resource) { create(:resource, learning_unit:) }

      response '200', 'Success', create_evaluation: true do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   url: { type: :string },
                   average_evaluation: { type: :string },
                   number_of_evaluations: { type: :integer },
                   resource_labels: { type: :array,
                                      items: {
                                        type: :object,
                                        properties: {
                                          id: { type: :integer },
                                          name: { type: :string },
                                          description: { type: :string }
                                        }
                                      } }
                 }
               },
               required: %w[id name]
        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data[0]['average_evaluation']).to eq('3.0')
          expect(data[0]['number_of_evaluations']).to eq(1)
        end
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

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/evaluation' do
    post 'Evaluate a resource' do
      tags 'Resources'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :resource_id, in: :path, type: :string
      parameter name: :resource_evaluation, in: :body, schema: {
        type: :object,
        properties: {
          evaluation: { type: :integer },
          comment: { type: :string }
        },
        required: %w[evaluation]
      }
      operationId 'evaluateResource'

      let(:resource_id) { create(:resource).id }
      let(:resource_evaluation) do
        { evaluation: '3', comment: 'Este sería un comentario de prueba' }
      end

      response '201', 'Created' do
        schema type: :object,
               properties: {
                 evaluation: { type: :integer },
                 id: { type: :integer },
                 user_id: { type: :integer },
                 comment: { type: :string, null: true },
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

  path '/api/learning_units/{learning_unit_id}/resources' do
    post 'Creates a new Resource' do
      tags 'Resources'
      consumes 'application/json'
      parameter name: :learning_unit_id, in: :path, type: :string
      parameter name: :resource, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          url: { type: :string },
          user: { type: :integer }
        },
        required: %w[name url]
      }
      operationId 'createResource'

      let(:learning_unit_id) { create(:learning_unit).id }
      let(:resource) { { name: 'Resource name', url: 'https://google.com', learning_unit_id:, user: user.id } }

      response '201', 'Resource created' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 url: { type: :string },
                 user: { type: :integer }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/completed' do
    get 'Return Resource completed status' do
      tags 'Resources'
      description 'Retrieves status of the resource for the actual user'
      parameter name: :resource_id, in: :path, type: :string
      produces 'application/json'
      operationId 'getResourceStatus'

      let(:resource_id) { create(:resource, name: 'ruby_course').id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 completed: { type: :boolean }
               }

        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end

    post 'Complete a Resource' do
      tags 'Resources'
      description 'Completes a resources by the specific user'
      parameter name: :resource_id, in: :path, type: :string
      produces 'application/json'
      operationId 'postResourceStatus'

      let(:resource) { create(:resource, name: 'ruby_course') }
      let(:resource_id) { resource.id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 completed: { type: :boolean }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '400', 'Bad Request', create_completed_resource: true do
        run_test!
      end

      response '404', 'Resource not found' do
        let(:resource_id) { 'invalid' }
        run_test!
      end
    end

    delete 'Uncomplete a Resource' do
      tags 'Resources'
      parameter name: :resource_id, in: :path, type: :string
      description 'Uncomplete a resource by the specific user'
      produces 'application/json'
      operationId 'deleteResourceStatus'

      let(:resource) { create(:resource, name: 'ruby_course') }
      let(:resource_id) { resource.id }

      response '200', 'Success', create_completed_resource: true do
        schema type: :object,
               properties: {
                 deleted: { type: :boolean }
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
