require 'swagger_helper'

describe 'Curriculums API' do

  path '/api/curriculums' do
    get 'Returns all Curriculums' do
      tags 'Curriculums'
      produces 'application/json'

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
    end
  end

  path '/api/curriculums/{id}' do
    get 'Returns Curriculum' do
      tags 'Curriculums'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'

      response '200', 'Success' do
        schema type: :object,
        properties: {
          id: {type: :integer},
          name: {type: :string}
        }
        run_test!
      end
    end
  end

end
