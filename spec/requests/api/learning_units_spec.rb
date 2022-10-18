require 'swagger_helper'
require 'rails_helper'

describe 'Learning Units API' do
  let(:user) { create(:user) }

  before do |response|
    sign_in user unless response.metadata[:skip_before]
    if response.metadata[:create_completed_learning_unit]
      create(
        :completed_learning_unit,
        user:,
        learning_unit:
      )
    end
  end

  path '/api/curriculums/{curriculum_id}/learning_units' do
    get 'Returns all Learning Unit from a Curriculum' do
      tags 'Learning Units'
      produces 'application/json'
      parameter name: :curriculum_id, in: :path, type: :string
      operationId 'getCurriculumLearningUnits'

      let(:curriculum_id) { curriculum_with_learning_units.id }

      response '200', 'Success' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   name: { type: :string }
                 }
               },
               required: %w[id name]

        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
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
      operationId 'getLearningUnit'

      let(:id) { create(:learning_unit, name: 'ruby').id }

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
      operationId 'getLearningUnitStatus'

      let(:learning_unit_id) { create(:learning_unit, name: 'ruby').id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 completed: { type: :boolean }
               }

        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:learning_unit_id) { 'invalid' }
        run_test!
      end
    end

    post 'Complete a Learning Unit' do
      tags 'Learning Units'
      description 'Completes a learning unit by the specific user'
      parameter name: :learning_unit_id, in: :path, type: :string
      produces 'application/json'
      operationId 'postLearningUnitStatus'

      let(:learning_unit) { create(:learning_unit, name: 'ruby') }
      let(:learning_unit_id) { learning_unit.id }

      response '200', 'Success' do
        schema type: :object,
               properties: {
                 completed: { type: :boolean }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '400', 'Bad Request', create_completed_learning_unit: true do
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:learning_unit_id) { 'invalid' }
        run_test!
      end
    end

    delete 'Uncomplete a Learning Unit' do
      tags 'Learning Units'
      parameter name: :learning_unit_id, in: :path, type: :string
      description 'Uncomplete a learning unit by the specific user'
      produces 'application/json'
      operationId 'deleteLearningUnitStatus'

      let(:learning_unit) { create(:learning_unit, name: 'ruby') }
      let(:learning_unit_id) { learning_unit.id }

      response '200', 'Success', create_completed_learning_unit: true do
        schema type: :object,
               properties: {
                 deleted: { type: :boolean }
               }
        run_test!
      end

      response '401', 'Unauthorized', skip_before: true do
        run_test!
      end

      response '404', 'Learning Unit not found' do
        let(:learning_unit_id) { 'invalid' }
        run_test!
      end
    end
  end
end
