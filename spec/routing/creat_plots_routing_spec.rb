require "rails_helper"

RSpec.describe CreatPlotsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/creat_plots").to route_to("creat_plots#index")
    end

    it "routes to #new" do
      expect(:get => "/creat_plots/new").to route_to("creat_plots#new")
    end

    it "routes to #show" do
      expect(:get => "/creat_plots/1").to route_to("creat_plots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/creat_plots/1/edit").to route_to("creat_plots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/creat_plots").to route_to("creat_plots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/creat_plots/1").to route_to("creat_plots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/creat_plots/1").to route_to("creat_plots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/creat_plots/1").to route_to("creat_plots#destroy", :id => "1")
    end

  end
end
