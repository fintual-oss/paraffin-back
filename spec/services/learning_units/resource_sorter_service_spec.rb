require 'rails_helper'
require 'bigdecimal/util'

RSpec.describe LearningUnits::ResourceSorterService do
  let(:first_user) { create(:user) }
  let(:second_user) { create(:user) }
  let(:third_user) { create(:user) }
  let(:learning_unit) { create(:learning_unit) }
  let(:service) { described_class.new(learning_unit) }
  let!(:first_resource) { create(:resource, learning_unit:, user: first_user) }
  let!(:second_resource) do
    create(:resource, learning_unit:, user: second_user)
  end
  let!(:third_resource) { create(:resource, learning_unit:, user: first_user) }

  describe '#resources_sorted_by_evaluation' do
    def create_evaluation(user, resource, evaluation)
      create(
        :resource_evaluation,
        user:,
        resource:,
        evaluation:
      )
    end

    context 'when there are many evaluations for many resources' do
      before do
        create_evaluation(first_user, first_resource, 4)
        create_evaluation(second_user, first_resource, 1)
        create_evaluation(third_user, first_resource, 1)

        create_evaluation(first_user, second_resource, 5)
        create_evaluation(second_user, second_resource, 3)
        create_evaluation(third_user, second_resource, 4)

        create_evaluation(first_user, third_resource, 1)
        create_evaluation(second_user, third_resource, 1)
        create_evaluation(third_user, third_resource, 1)
      end

      let(:expected_sorted_array) do
        [{ id: second_resource.id,
           name: second_resource.name,
           evaluation: 4.to_d },
         { id: first_resource.id,
           name: first_resource.name,
           evaluation: 2.to_d },
         { id: third_resource.id,
           name: third_resource.name,
           evaluation: 1.to_d }]
      end

      let(:fourth_user) { create(:user) }

      it 'sorts resources correctly' do
        expect(service.resources_sorted_by_evaluation)
          .to eq(expected_sorted_array)
      end

      it 'ignores nil evaluations in the average' do
        create_evaluation(fourth_user, second_resource, nil)
        expect(service.resources_sorted_by_evaluation)
          .to eq(expected_sorted_array)
      end
    end

    context 'when there are no evaluations' do
      let(:expected_sorted_array) do
        [{ id: second_resource.id,
           name: second_resource.name,
           evaluation: nil },
         { id: first_resource.id, name: first_resource.name, evaluation: nil },
         { id: third_resource.id, name: third_resource.name, evaluation: nil }]
      end

      it 'returns the resources in any order' do
        expect(service.resources_sorted_by_evaluation)
          .to match_array(expected_sorted_array)
      end
    end

    context 'when there are no resources for a given learning unit' do
      let(:new_learning_unit) { create(:learning_unit) }
      let(:new_service) { described_class.new(new_learning_unit) }

      it do
        expect(new_service.resources_sorted_by_evaluation).to be_empty
      end
    end
  end
end
