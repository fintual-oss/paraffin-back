require 'swagger_helper'
require 'rails_helper'

describe 'Users API' do
  let!(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
  end

  path '/api/current_user' do
    get 'Returns current user' do
      tags 'Users'
      produces 'application/json'
      operationId 'getCurrentUser'

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 email: { type: :string }
               }
        run_test!
      end
    end
  end
end
