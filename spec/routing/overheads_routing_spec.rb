require "spec_helper"

describe OverheadsController do
  describe "routing" do

    it "routes to #index" do
      get("/overheads").should route_to("overheads#index")
    end

    it "routes to #new" do
      get("/overheads/new").should route_to("overheads#new")
    end

    it "routes to #show" do
      get("/overheads/1").should route_to("overheads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/overheads/1/edit").should route_to("overheads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/overheads").should route_to("overheads#create")
    end

    it "routes to #update" do
      put("/overheads/1").should route_to("overheads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/overheads/1").should route_to("overheads#destroy", :id => "1")
    end

  end
end
