require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  let(:user) do
    User.new(name: 'user', email: 'user@email.com', password: 'passsword')
  end

  before do
    sign_in user
  end

  describe 'GET /landing_page' do
    it 'returns http success' do
      get '/static_pages/landing_page'
      expect(response).to have_http_status(:success)
    end
  end
end
