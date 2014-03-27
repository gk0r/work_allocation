require 'spec_helper'

describe "tsts/index" do
  before(:each) do
    assign(:tsts, [
      stub_model(Tst,
        :deliverable_id => "Deliverable",
        :user_id => "User",
        :planned_tests => "",
        :executed_tests => "",
        :status => "Status",
        :comment => "Comment"
      ),
      stub_model(Tst,
        :deliverable_id => "Deliverable",
        :user_id => "User",
        :planned_tests => "",
        :executed_tests => "",
        :status => "Status",
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of tsts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Deliverable".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
