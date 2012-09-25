require 'spec_helper'

describe "overheads/new" do
  before(:each) do
    assign(:overhead, stub_model(Overhead,
      :description => "MyString",
      :user_id => 1,
      :effort => 1
    ).as_new_record)
  end

  it "renders new overhead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => overheads_path, :method => "post" do
      assert_select "input#overhead_description", :name => "overhead[description]"
      assert_select "input#overhead_user_id", :name => "overhead[user_id]"
      assert_select "input#overhead_effort", :name => "overhead[effort]"
    end
  end
end
