require 'spec_helper'

describe "ba_specs/index" do
  before(:each) do
    assign(:ba_specs, [
      stub_model(BaSpec,
        :deliverable_id => 1,
        :name => "Name",
        :progress => 2,
        :internal_review_signoff => false,
        :external_review_signoff => false,
        :comments => "Comments"
      ),
      stub_model(BaSpec,
        :deliverable_id => 1,
        :name => "Name",
        :progress => 2,
        :internal_review_signoff => false,
        :external_review_signoff => false,
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of ba_specs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
