require 'swagger_helper'
require 'rails_helper'

describe 'Curriculums API' do

  let!(:user) { create(:user) }
  let!(:curriculum) { create(:curriculum) }

  before do
    sign_in user
  end

  path '/api/curriculums' do

    get 'Returns all Curriculums' do
      tags 'Curriculums'
      produces 'application/json'
      operationId "getCurriculums"

      response '200', 'Success' do
        schema type: :array,
        items: {
          type: :object,
          properties: {
            id: {type: :integer},
            name: {type: :string}
          }
        }
        run_test!
      end

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        run_test!
      end
    end
  end

  path '/api/curriculums/{id}' do
    get 'Returns Curriculum' do
      tags 'Curriculums'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      operationId "getCurriculum"

      response '200', 'Success' do
        schema type: :object,
        properties: {
          id: {type: :integer},
          name: {type: :string}
        }
        let(:id) {Curriculum.create(name:"Intro to Swag").id}
        run_test!
      end

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        let(:id) {Curriculum.create(name:"Intro to Swag").id}
        run_test!
      end

      response '404', 'Not Found' do
        let(:id) {Curriculum.new(name:"Intro to Swag").id}
        run_test!
      end

    end

  end

end
