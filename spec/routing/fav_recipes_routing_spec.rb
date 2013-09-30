require "spec_helper"

describe FavRecipesController do
  describe "routing" do

    it "routes to #index" do
      get("/fav_recipes").should route_to("fav_recipes#index")
    end

    it "routes to #new" do
      get("/fav_recipes/new").should route_to("fav_recipes#new")
    end

    it "routes to #show" do
      get("/fav_recipes/1").should route_to("fav_recipes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fav_recipes/1/edit").should route_to("fav_recipes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fav_recipes").should route_to("fav_recipes#create")
    end

    it "routes to #update" do
      put("/fav_recipes/1").should route_to("fav_recipes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fav_recipes/1").should route_to("fav_recipes#destroy", :id => "1")
    end

  end
end
