require 'spec_helper'

describe "ba_specs/show" do
  before(:each) do
    @ba_spec = assign(:ba_spec, stub_model(BaSpec,
      :deliverable_id => 1,
      :name => "Name",
      :progress => 2,
      :internal_review_signoff => false,
      :external_review_signoff => false,
      :comments => "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Comments/)
  end
end
