require "spec_helper"

describe DeliverablesController do
  describe "routing" do

    it "routes to #index" do
      get("/deliverables").should route_to("deliverables#index")
    end

    it "routes to #new" do
      get("/deliverables/new").should route_to("deliverables#new")
    end

    it "routes to #show" do
      get("/deliverables/1").should route_to("deliverables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/deliverables/1/edit").should route_to("deliverables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/deliverables").should route_to("deliverables#create")
    end

    it "routes to #update" do
      put("/deliverables/1").should route_to("deliverables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/deliverables/1").should route_to("deliverables#destroy", :id => "1")
    end

  end
end
