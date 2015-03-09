require 'rails_helper'

RSpec.describe "Firms", type: :request do
  describe "GET /firms" do
    it "works! (now write some real specs)" do
      get firms_path
      expect(response).to have_http_status(200)
    end
  end
end
