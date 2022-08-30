require 'rails_helper'

RSpec.describe Resources::ResourceService, type: :model do
  let(:user) { create(:user) }
  let(:learning_unit) { create(:learning_unit) }
  let(:resource) { create(:resource) }
  let(:service) { Resources::ResourceService.new(resource) }

  describe '#comments' do
    context 'when there are no comments' do
      it 'returns an empty array' do
        expect(service.comments).to be_empty
      end
    end

    context 'when there are comments' do
      let(:first_comment) { create(:resource_comment, resource:) }
      let(:second_comment) { create(:resource_comment, resource:) }

      it 'returns the existing comments' do
        expect(service.comments).to match_array([first_comment, second_comment])
      end
    end
  end

  describe '#average' do
    context 'when there are no evaluations' do
      it do
        expect(service.average).to be_nil
      end
    end

    context 'when there are evaluations' do
      before do
        create(:resource_evaluation, evaluation: 5, resource:)
        create(:resource_evaluation, evaluation: 3, resource:)
      end

      it 'returns the average' do
        expect(service.average).to eq(4)
      end
    end
  end

  describe '#created_by' do
    context 'when a resource is created' do
      let(:my_resource) { create(:resource, user:) }
      let(:my_service) { Resources::ResourceService.new(my_resource) }
      it 'returns the name of the user' do
        expect(my_service.created_by).to eq(user.name)
      end
    end
  end
end
