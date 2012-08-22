require 'spec_helper'

describe "ba_specs/edit" do
  before(:each) do
    @ba_spec = assign(:ba_spec, stub_model(BaSpec,
      :deliverable_id => 1,
      :name => "MyString",
      :progress => 1,
      :internal_review_signoff => false,
      :external_review_signoff => false,
      :comments => "MyString"
    ))
  end

  it "renders the edit ba_spec form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ba_specs_path(@ba_spec), :method => "post" do
      assert_select "input#ba_spec_deliverable_id", :name => "ba_spec[deliverable_id]"
      assert_select "input#ba_spec_name", :name => "ba_spec[name]"
      assert_select "input#ba_spec_progress", :name => "ba_spec[progress]"
      assert_select "input#ba_spec_internal_review_signoff", :name => "ba_spec[internal_review_signoff]"
      assert_select "input#ba_spec_external_review_signoff", :name => "ba_spec[external_review_signoff]"
      assert_select "input#ba_spec_comments", :name => "ba_spec[comments]"
    end
  end
end
