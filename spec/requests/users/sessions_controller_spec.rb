require 'rails_helper'

RSpec.describe Users::SessionsController, type: :request do
  describe 'Sign-in redirect_to' do
    let(:user) { create(:user) }
    let(:curriculum_id) { create(:curriculum).id }

    context 'when redirect_to is not present as parameter' do
      def perform
        sign_in user
        post user_session_url
      end

      it 'redirects to the root_path' do
        expect(perform).to redirect_to(root_path)
      end
    end

    context 'when redirect is present as parameter' do
      def perform(redirect_path)
        get new_user_session_path, params: { redirect_to: redirect_path }
        sign_in user
        post user_session_url
      end

      let(:redirect_path) { "/curriculums/#{curriculum_id}/learning_units" }

      it 'redirects to the provided path' do
        expect(perform(redirect_path)).to redirect_to(redirect_path)
      end
    end
  end
end
