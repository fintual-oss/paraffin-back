require 'swagger_helper'

describe 'Users API' do

  path '/current_user' do
    get 'Returns current user' do
      tags 'Users'
      produces 'application/json'
      operationId 'getCurrentUser'

      response '200', 'Success' do
        schema type: :object,
        properties: {
          id: {type: :integer},
          name: {type: :string},
          email: {type: :string}
        }
        run_test!
      end
    end
  end

end
