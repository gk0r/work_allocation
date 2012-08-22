require "spec_helper"

describe BaSpecsController do
  describe "routing" do

    it "routes to #index" do
      get("/ba_specs").should route_to("ba_specs#index")
    end

    it "routes to #new" do
      get("/ba_specs/new").should route_to("ba_specs#new")
    end

    it "routes to #show" do
      get("/ba_specs/1").should route_to("ba_specs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ba_specs/1/edit").should route_to("ba_specs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ba_specs").should route_to("ba_specs#create")
    end

    it "routes to #update" do
      put("/ba_specs/1").should route_to("ba_specs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ba_specs/1").should route_to("ba_specs#destroy", :id => "1")
    end

  end
end
