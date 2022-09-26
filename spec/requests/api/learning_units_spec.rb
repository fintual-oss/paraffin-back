require 'swagger_helper'
require 'rails_helper'

describe 'Learning Units API' do
  let(:user) { create(:user) }
  before do
    sign_in user
  end

  path '/api/curriculums/{curriculum_id}/learning_units' do
    get 'Returns all Learning Unit from a Curriculum' do
      tags 'Learning Units'
      produces 'application/json'
      parameter name: :curriculum_id, in: :path, type: :string

      let(:learning_unit) { create(:learning_unit, name: 'ruby') }
      let(:curriculum_id) { create(:curriculum, name: 'fullstack', learning_units: [learning_unit] ).id }

      response '200', 'Success' do
        schema type: :array,
        items: {
          type: :object,
          properties: {
            id: {type: :integer},
            name: {type: :string}
          }
        },
        required: [ 'id', 'name' ]
      
        run_test!
      end

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        run_test!
      end

      response '404', 'Curriculum not found' do
        let(:curriculum_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/learning_units/{id}' do
    get 'Returns Learning Unit' do
      tags 'Learning Units'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'

      let(:id) { create(:learning_unit, name: 'ruby').id }

      response '200', 'Success' do
        schema type: :object,
        properties: {
          id: {type: :integer},
          name: {type: :string}
        }
        
        run_test!
      end

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:id) { 'invalid' }
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

      let(:learning_unit_id) { create(:learning_unit, name: 'ruby').id }

      response '200', 'Success' do
        schema type: :object,
        properties: {
          completed: {type: :boolean}
        }

        run_test!
      end

      response '401', 'Unauthorized' do
        before do
          sign_out user
        end
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:learning_unit_id) { 'invalid' }
        run_test!
      end
    end
  end

end
