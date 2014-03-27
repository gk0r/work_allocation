require 'spec_helper'

describe "tsts/show" do
  before(:each) do
    @tst = assign(:tst, stub_model(Tst,
      :deliverable_id => "Deliverable",
      :user_id => "User",
      :planned_tests => "",
      :executed_tests => "",
      :status => "Status",
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Deliverable/)
    rendered.should match(/User/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Status/)
    rendered.should match(/Comment/)
  end
end
