require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /landing_page" do
    it "returns http success" do
      get "/static_pages/landing_page"
      expect(response).to have_http_status(:success)
    end
  end

end
