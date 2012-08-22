require 'spec_helper'

describe "ba_specs/new" do
  before(:each) do
    assign(:ba_spec, stub_model(BaSpec,
      :deliverable_id => 1,
      :name => "MyString",
      :progress => 1,
      :internal_review_signoff => false,
      :external_review_signoff => false,
      :comments => "MyString"
    ).as_new_record)
  end

  it "renders new ba_spec form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ba_specs_path, :method => "post" do
      assert_select "input#ba_spec_deliverable_id", :name => "ba_spec[deliverable_id]"
      assert_select "input#ba_spec_name", :name => "ba_spec[name]"
      assert_select "input#ba_spec_progress", :name => "ba_spec[progress]"
      assert_select "input#ba_spec_internal_review_signoff", :name => "ba_spec[internal_review_signoff]"
      assert_select "input#ba_spec_external_review_signoff", :name => "ba_spec[external_review_signoff]"
      assert_select "input#ba_spec_comments", :name => "ba_spec[comments]"
    end
  end
end
