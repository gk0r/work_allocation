require 'spec_helper'

describe "tech_specs/index" do
  before(:each) do
    assign(:tech_specs, [
      stub_model(TechSpec,
        :deliverable_id => 1,
        :name => "Name",
        :comment => "Comment",
        :internal_review_signoff => false
      ),
      stub_model(TechSpec,
        :deliverable_id => 1,
        :name => "Name",
        :comment => "Comment",
        :internal_review_signoff => false
      )
    ])
  end

  it "renders a list of tech_specs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
