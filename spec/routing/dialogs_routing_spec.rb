require "rails_helper"

RSpec.describe DialogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dialogs").to route_to("dialogs#index")
    end


    it "routes to #show" do
      expect(:get => "/dialogs/1").to route_to("dialogs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dialogs").to route_to("dialogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dialogs/1").to route_to("dialogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dialogs/1").to route_to("dialogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dialogs/1").to route_to("dialogs#destroy", :id => "1")
    end

  end
end
