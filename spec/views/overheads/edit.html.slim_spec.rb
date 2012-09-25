require 'spec_helper'

describe "overheads/edit" do
  before(:each) do
    @overhead = assign(:overhead, stub_model(Overhead,
      :description => "MyString",
      :user_id => 1,
      :effort => 1
    ))
  end

  it "renders the edit overhead form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => overheads_path(@overhead), :method => "post" do
      assert_select "input#overhead_description", :name => "overhead[description]"
      assert_select "input#overhead_user_id", :name => "overhead[user_id]"
      assert_select "input#overhead_effort", :name => "overhead[effort]"
    end
  end
end
