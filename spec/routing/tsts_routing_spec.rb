require "spec_helper"

describe TstsController do
  describe "routing" do

    it "routes to #index" do
      get("/tsts").should route_to("tsts#index")
    end

    it "routes to #new" do
      get("/tsts/new").should route_to("tsts#new")
    end

    it "routes to #show" do
      get("/tsts/1").should route_to("tsts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tsts/1/edit").should route_to("tsts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tsts").should route_to("tsts#create")
    end

    it "routes to #update" do
      put("/tsts/1").should route_to("tsts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tsts/1").should route_to("tsts#destroy", :id => "1")
    end

  end
end
