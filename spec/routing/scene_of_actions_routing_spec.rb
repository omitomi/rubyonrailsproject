require "rails_helper"

RSpec.describe SceneOfActionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scene_of_actions").to route_to("scene_of_actions#index")
    end

    it "routes to #new" do
      expect(:get => "/scene_of_actions/new").to route_to("scene_of_actions#new")
    end

    it "routes to #show" do
      expect(:get => "/scene_of_actions/1").to route_to("scene_of_actions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scene_of_actions/1/edit").to route_to("scene_of_actions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scene_of_actions").to route_to("scene_of_actions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/scene_of_actions/1").to route_to("scene_of_actions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/scene_of_actions/1").to route_to("scene_of_actions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scene_of_actions/1").to route_to("scene_of_actions#destroy", :id => "1")
    end

  end
end
