require 'swagger_helper'
require 'rails_helper'

describe 'Curriculums API' do
  let!(:user) { create(:user) }
  let(:curriculum) { create(:curriculum) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
  end

  path '/api/curriculums' do
    get 'Returns all Curriculums' do
      tags 'Curriculums'
      produces 'application/json'
      operationId 'getCurriculums'

      response '200', 'Success' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   name: { type: :string }
                 }
               }

        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end
    end
  end

  path '/api/curriculums/{id}' do
    get 'Returns Curriculum' do
      tags 'Curriculums'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      operationId 'getCurriculum'

      let(:id) { Curriculum.create(name: 'Intro to Swag').id }

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

      response '404', 'Curriculum not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
