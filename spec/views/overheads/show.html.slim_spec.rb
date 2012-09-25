require 'spec_helper'

describe "overheads/show" do
  before(:each) do
    @overhead = assign(:overhead, stub_model(Overhead,
      :description => "Description",
      :user_id => 1,
      :effort => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
