require 'swagger_helper'

describe 'Resources API' do

  path '/api/learning_units/{learning_unit_id}/resources' do
    get 'Returns all Resources from Learning Unit' do
      tags 'Resources'
      parameter name: :learning_unit_id, in: :path, type: :string
      produces 'application/json'

      response '200', 'Success' do
        schema type: :array,
        items: {
          type: :object,
          properties: {
            id: {type: :integer},
            name: {type: :string},
            url: {type: :string}
          }
        }
        run_test!
      end
    end
  end

  path '/api/resources/{resource_id}/average_evaluation' do
    get 'Returns Resource average evaluation ' do
      tags 'Resources'
      parameter name: :resource_id, in: :path, type: :string
      produces 'application/json'

      response '200', 'Success' do
        schema type: :object,
        properties: {
          average_evaluation: {type: :integer}
        }
        run_test!
      end
    end
  end

end
