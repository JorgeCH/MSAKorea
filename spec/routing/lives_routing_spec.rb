require "spec_helper"

describe LivesController do
  describe "routing" do

    it "routes to #index" do
      get("/lives").should route_to("lives#index")
    end

    it "routes to #new" do
      get("/lives/new").should route_to("lives#new")
    end

    it "routes to #show" do
      get("/lives/1").should route_to("lives#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lives/1/edit").should route_to("lives#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lives").should route_to("lives#create")
    end

    it "routes to #update" do
      put("/lives/1").should route_to("lives#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lives/1").should route_to("lives#destroy", :id => "1")
    end

  end
end
