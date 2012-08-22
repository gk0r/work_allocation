require 'spec_helper'

describe "deliverables/show" do
  before(:each) do
    @deliverable = assign(:deliverable, stub_model(Deliverable,
      :description => "Description",
      :ba_spec_id => 1,
      :tech_spec_id => 2,
      :code_id => 3,
      :testing_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
