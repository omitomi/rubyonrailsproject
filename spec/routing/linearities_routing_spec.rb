require "rails_helper"

RSpec.describe LinearitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/linearities").to route_to("linearities#index")
    end

    it "routes to #new" do
      expect(:get => "/linearities/new").to route_to("linearities#new")
    end

    it "routes to #show" do
      expect(:get => "/linearities/1").to route_to("linearities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/linearities/1/edit").to route_to("linearities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/linearities").to route_to("linearities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/linearities/1").to route_to("linearities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/linearities/1").to route_to("linearities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/linearities/1").to route_to("linearities#destroy", :id => "1")
    end

  end
end
