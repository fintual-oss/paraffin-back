require 'rails_helper'
RSpec.describe ResourceCommentsController, type: :request do
  describe 'POST /create' do
    let(:user) { create(:user) }
    let(:resource) { create(:resource, user:) }

    before do
      sign_in user
    end

    context 'when writing a new comment' do
      let(:content) { 'test_comment' }
      let(:params) do
        { 'resource_id': resource.id, 'resource_comments':
          { 'content': content } }
      end

      def perform
        post resource_resource_comments_path(params)
      end

      it do
        expect { perform }.to change(ResourceComment, :count).by(1)
      end

      it "redirects to resource's show page" do
        expect(perform).to redirect_to(
          resource_path(resource.id)
        )
      end

      it 'shows the new comment right away' do
        perform
        follow_redirect!
        expect(response.body).to include("Comment by #{user.name}: #{content}")
      end
    end
  end
end
