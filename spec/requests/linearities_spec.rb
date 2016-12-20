require 'rails_helper'

RSpec.describe "Linearities", type: :request do
  describe "GET /linearities" do
    it "works! (now write some real specs)" do
      get linearities_path
      expect(response).to have_http_status(200)
    end
  end
end
