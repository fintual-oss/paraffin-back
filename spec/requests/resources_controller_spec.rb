require 'rails_helper'
RSpec.describe ResourcesController, type: :request do
  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:resource) { create(:resource, user:) }
    let(:comment) { create(:resource_comment, resource:) }
    let(:comments) { [comment] }
    let(:average) { 3 }
    let(:resource_service_mock) do
      instance_double(
        Resources::ResourceService,
        id: 4,
        url: 'http://google.com',
        learning_unit_name: 'Ruby on Rails',
        created_by: 'Matías Hurtado',
        comments:,
        average:
      )
    end

    before do
      sign_in user
      allow(Resources::ResourceService)
        .to receive(:new)
        .with(resource)
        .and_return(resource_service_mock)
    end

    def perform
      get resource_path(resource)
    end

    it do
      perform
      expect(response.body).to include('Showing resource 4')
    end

    context 'when there are no comments' do
      let(:comments) { [] }

      it do
        perform
        expect(response.body).to include('There are no comments yet')
      end
    end

    context 'when there are no evaluations' do
      let(:average) { nil }

      it do
        perform
        expect(response.body).to include('There are no evaluations yet')
      end
    end
  end
end
