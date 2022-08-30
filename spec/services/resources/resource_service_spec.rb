require 'rails_helper'

RSpec.describe Resources::ResourceService do
  let(:user) { create(:user) }
  let(:learning_unit) { create(:learning_unit) }

  let(:resource) { create(:resource, user:) }

  let(:service) { described_class.new(resource) }

  describe '#comments' do
    context 'when there are no comments' do
      it do
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
    it do
      expect(service.created_by).to eq(user.name)
    end
  end
end
