require "spec_helper"

describe PrearrivalsController do
  describe "routing" do

    it "routes to #index" do
      get("/prearrivals").should route_to("prearrivals#index")
    end

    it "routes to #new" do
      get("/prearrivals/new").should route_to("prearrivals#new")
    end

    it "routes to #show" do
      get("/prearrivals/1").should route_to("prearrivals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prearrivals/1/edit").should route_to("prearrivals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prearrivals").should route_to("prearrivals#create")
    end

    it "routes to #update" do
      put("/prearrivals/1").should route_to("prearrivals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prearrivals/1").should route_to("prearrivals#destroy", :id => "1")
    end

  end
end
