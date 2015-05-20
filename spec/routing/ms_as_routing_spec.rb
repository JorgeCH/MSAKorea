require "spec_helper"

describe MsAsController do
  describe "routing" do

    it "routes to #index" do
      get("/msas").should route_to("msas#index")
    end

    it "routes to #new" do
      get("/msas/new").should route_to("msas#new")
    end

    it "routes to #show" do
      get("/msas/1").should route_to("msas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/msas/1/edit").should route_to("msas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/msas").should route_to("msas#create")
    end

    it "routes to #update" do
      put("/msas/1").should route_to("msas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/msas/1").should route_to("msas#destroy", :id => "1")
    end

  end
end
