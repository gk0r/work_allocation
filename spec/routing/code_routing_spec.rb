require "spec_helper"

describe CodeController do
  describe "routing" do

    it "routes to #index" do
      get("/code").should route_to("code#index")
    end

    it "routes to #new" do
      get("/code/new").should route_to("code#new")
    end

    it "routes to #show" do
      get("/code/1").should route_to("code#show", :id => "1")
    end

    it "routes to #edit" do
      get("/code/1/edit").should route_to("code#edit", :id => "1")
    end

    it "routes to #create" do
      post("/code").should route_to("code#create")
    end

    it "routes to #update" do
      put("/code/1").should route_to("code#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/code/1").should route_to("code#destroy", :id => "1")
    end

  end
end
