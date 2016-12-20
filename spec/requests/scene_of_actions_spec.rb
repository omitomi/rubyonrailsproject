require 'rails_helper'

RSpec.describe "SceneOfActions", type: :request do
  describe "GET /scene_of_actions" do
    it "works! (now write some real specs)" do
      get scene_of_actions_path
      expect(response).to have_http_status(200)
    end
  end
end
