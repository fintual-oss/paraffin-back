require 'swagger_helper'

describe 'Learning Units API' do

  path '/api/curriculums/{curriculum_id}/learning_units' do
    get 'Returns all Learning Unit from a Curriculum' do
      tags 'Learning Units'
      produces 'application/json'
      parameter name: :curriculum_id, in: :path, type: :string

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

  path '/api/learning_units/{id}' do
    get 'Returns Learning Unit' do
      tags 'Learning Units'
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

  path '/api/learning_units/{learning_unit_id}/completed' do
    get 'Return Learning Unit status' do
      tags 'Learning Units'
      description 'Retrieves if current user completed provided Learning Unit'
      parameter name: :learning_unit_id, in: :path, type: :string
      produces 'application/json'

      response '200', 'Success' do
        schema type: :object,
        properties: {
          completed: {type: :boolean}
        }
        run_test!
      end
    end
  end

end
