require "spec_helper"

describe MarketCommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/market_comments").should route_to("market_comments#index")
    end

    it "routes to #new" do
      get("/market_comments/new").should route_to("market_comments#new")
    end

    it "routes to #show" do
      get("/market_comments/1").should route_to("market_comments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/market_comments/1/edit").should route_to("market_comments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/market_comments").should route_to("market_comments#create")
    end

    it "routes to #update" do
      put("/market_comments/1").should route_to("market_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/market_comments/1").should route_to("market_comments#destroy", :id => "1")
    end

  end
end
