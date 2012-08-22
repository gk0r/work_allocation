require 'spec_helper'

describe "tech_specs/show" do
  before(:each) do
    @tech_spec = assign(:tech_spec, stub_model(TechSpec,
      :deliverable_id => 1,
      :name => "Name",
      :comment => "Comment",
      :internal_review_signoff => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Comment/)
    rendered.should match(/false/)
  end
end
