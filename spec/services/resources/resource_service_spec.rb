require 'rails_helper'

RSpec.describe Resources::ResourceService, type: :model do
  let(:user) { create(:user) }
  let(:learning_unit) { create(:learning_unit) }
  let(:resource) { create(:resource) }
  let(:service) { Resources::ResourceService.new(resource) }

  describe '#average' do
    it 'returns nil when there are no evaluations' do
      expect(service.average).to be_nil
    end
  end
end
