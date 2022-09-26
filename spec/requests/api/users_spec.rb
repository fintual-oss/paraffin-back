require 'swagger_helper'

describe 'Users API' do

  let!(:user) { create(:user) }

  before do
    sign_in user
  end

  path '/api/current_user' do
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

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        run_test!
      end
    end
  end

end
