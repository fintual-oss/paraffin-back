require 'swagger_helper'
require 'rails_helper'

describe 'Learning Unit Successions API' do
  let!(:user) { create(:user) }
  let(:curriculum) { create(:curriculum) }
  let(:cycle) { create(:cycle) }
  let(:first_learning_unit) { create(:learning_unit) }
  let(:second_learning_unit) { create(:learning_unit) }
  let(:third_learning_unit) { create(:learning_unit) }

  before do |response|
    create(
      :learning_unit_succession,
      cycle:,
      predecessor: first_learning_unit,
      successor: second_learning_unit
    )
    create(
      :learning_unit_succession,
      cycle:,
      predecessor: second_learning_unit,
      successor: third_learning_unit
    )
    sign_in user unless response.metadata[:skip_before]
  end

  path '/api/cycles/{cycle_id}/learning_unit_successions' do
    get 'Returns all learning units successions in the cycle' do
      tags 'Cycles'
      produces 'application/json'
      parameter name: :cycle_id, in: :path, type: :string
      operationId 'listLearningUnitSuccessions'

      response '200', 'Success' do
        let(:cycle_id) { cycle.id }
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   predecessor_id: { type: :integer },
                   successor_id: { type: :integer }
                 }
               }

        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data[0]['predecessor_id']).to eq(first_learning_unit.id)
          expect(data[1]['successor_id']).to eq(third_learning_unit.id)
        end
      end

      response '404', 'Record not found' do
        let(:cycle_id) { 'invalid' }
        schema type: :object, properties: {
          'status': { type: :string },
          'code': { type: :integer },
          'message': { type: :string }
        }
        run_test!
      end
    end
  end
end
