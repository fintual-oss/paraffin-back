require 'swagger_helper'
require 'rails_helper'

describe 'Resources API' do
  let(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
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
    get 'Returns Resource' do
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
end
