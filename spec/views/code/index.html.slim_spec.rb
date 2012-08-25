require 'spec_helper'

describe "code/index" do
  before(:each) do
    assign(:code, [
      stub_model(Code),
      stub_model(Code)
    ])
  end

  it "renders a list of code" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
