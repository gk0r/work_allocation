require 'spec_helper'

describe "deliverables/index" do
  before(:each) do
    assign(:deliverables, [
      stub_model(Deliverable,
        :description => "Description",
        :ba_spec_id => 1,
        :tech_spec_id => 2,
        :code_id => 3,
        :testing_id => 4
      ),
      stub_model(Deliverable,
        :description => "Description",
        :ba_spec_id => 1,
        :tech_spec_id => 2,
        :code_id => 3,
        :testing_id => 4
      )
    ])
  end

  it "renders a list of deliverables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
