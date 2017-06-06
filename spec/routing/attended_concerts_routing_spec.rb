require "rails_helper"

RSpec.describe AttendedConcertsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attended_concerts").to route_to("attended_concerts#index")
    end

    it "routes to #new" do
      expect(:get => "/attended_concerts/new").to route_to("attended_concerts#new")
    end

    it "routes to #show" do
      expect(:get => "/attended_concerts/1").to route_to("attended_concerts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/attended_concerts/1/edit").to route_to("attended_concerts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/attended_concerts").to route_to("attended_concerts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attended_concerts/1").to route_to("attended_concerts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attended_concerts/1").to route_to("attended_concerts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attended_concerts/1").to route_to("attended_concerts#destroy", :id => "1")
    end

  end
end
