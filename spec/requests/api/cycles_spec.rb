require 'swagger_helper'
require 'rails_helper'

describe 'Cycles API' do
  let(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
  end

  path '/api/curriculums/{curriculum_id}/cycles' do
    get 'Returns all Cycles from a Curriculum' do
      tags 'Cycles'
      parameter name: :curriculum_id, in: :path, type: :string
      produces 'application/json'
      operationId 'getCycles'

      let(:curriculum_id) { create(:curriculum).id }
      let(:cycle) { create(:cycle, curriculum_id:) }

      response '200', 'Success' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   name: { type: :string },
                   learning_goals_description: { type: :string }
                 }
               }

        run_test!
      end

      response '404', 'Curriculum not found' do
        let(:curriculum_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/cycles/{id}' do
    get 'Returns Cycle details' do
      tags 'Cycles'
      description 'Retrieves the details of a cycle'
      parameter name: :id, in: :path, type: :string
      produces 'application/json'
      operationId 'getCycle'

      let(:curriculum_id) { create(:curriculum).id }
      let(:cycle) { create(:cycle, curriculum_id:) }
      let(:id) { cycle.id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 order_number: { type: :integer },
                 learning_goals_description: { type: :string },
                 challenge_description: { type: :string },
                 boilerplate_url: { type: :string }
               }

        run_test!
      end

      response '404', 'Cycle not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
