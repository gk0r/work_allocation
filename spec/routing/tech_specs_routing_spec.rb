require "spec_helper"

describe TechSpecsController do
  describe "routing" do

    it "routes to #index" do
      get("/tech_specs").should route_to("tech_specs#index")
    end

    it "routes to #new" do
      get("/tech_specs/new").should route_to("tech_specs#new")
    end

    it "routes to #show" do
      get("/tech_specs/1").should route_to("tech_specs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tech_specs/1/edit").should route_to("tech_specs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tech_specs").should route_to("tech_specs#create")
    end

    it "routes to #update" do
      put("/tech_specs/1").should route_to("tech_specs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tech_specs/1").should route_to("tech_specs#destroy", :id => "1")
    end

  end
end
