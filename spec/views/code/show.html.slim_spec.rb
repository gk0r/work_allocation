require 'spec_helper'

describe "code/show" do
  before(:each) do
    @code = assign(:code, stub_model(Code))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
