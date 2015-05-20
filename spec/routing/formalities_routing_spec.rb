require "spec_helper"

describe FormalitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/formalities").should route_to("formalities#index")
    end

    it "routes to #new" do
      get("/formalities/new").should route_to("formalities#new")
    end

    it "routes to #show" do
      get("/formalities/1").should route_to("formalities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/formalities/1/edit").should route_to("formalities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/formalities").should route_to("formalities#create")
    end

    it "routes to #update" do
      put("/formalities/1").should route_to("formalities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/formalities/1").should route_to("formalities#destroy", :id => "1")
    end

  end
end
