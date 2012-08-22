require 'spec_helper'

describe "BaSpecs" do
  describe "GET /ba_specs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ba_specs_path
      response.status.should be(200)
    end
  end
end
