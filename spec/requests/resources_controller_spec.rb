require 'rails_helper'
RSpec.describe ResourcesController, type: :request do
  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:resource) { create(:resource, user:) }
    let(:comment) { create(:resource_comment, resource:) }
    let(:comments) { [comment] }
    let(:average) { 3 }
    let(:learning_unit) { create(:learning_unit) }
    let(:resource_service_mock) do
      instance_double(
        Resources::ResourceService,
        id: 4,
        url: 'http://google.com',
        learning_unit_name: 'Ruby on Rails',
        created_by: 'Matías Hurtado',
        comments:,
        average:,
        learning_unit:
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

  describe 'POST /create' do
    let(:user) { create(:user) }
    let(:learning_unit) { create(:learning_unit) }

    before do
      sign_in user
    end

    context 'when creating a new resource' do
      let(:name) { 'Even more Ruby' }
      let(:url) { 'https://www.youtube.com' }
      let(:params) do
        { 'resource':
          { 'name': name, 'url': url },
          'learning_unit_id': learning_unit.id }
      end

      def perform
        post learning_unit_resources_path(params)
      end

      it 'increases the number of resources by 1' do
        expect { perform }.to change(Resource, :count).by(1)
      end

      it "redirects to learning unit's show page" do
        expect(perform).to redirect_to(learning_unit)
      end

      it 'shows the new resource right away' do
        perform
        follow_redirect!
        expect(response.body).to include(name)
      end
    end
  end
end
