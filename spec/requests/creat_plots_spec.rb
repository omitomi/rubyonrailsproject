require 'rails_helper'

RSpec.describe "CreatPlots", type: :request do
  describe "GET /creat_plots" do
    it "works! (now write some real specs)" do
      get creat_plots_path
      expect(response).to have_http_status(200)
    end
  end
end
