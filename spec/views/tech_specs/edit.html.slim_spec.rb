require 'spec_helper'

describe "tech_specs/edit" do
  before(:each) do
    @tech_spec = assign(:tech_spec, stub_model(TechSpec,
      :deliverable_id => 1,
      :name => "MyString",
      :comment => "MyString",
      :internal_review_signoff => false
    ))
  end

  it "renders the edit tech_spec form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tech_specs_path(@tech_spec), :method => "post" do
      assert_select "input#tech_spec_deliverable_id", :name => "tech_spec[deliverable_id]"
      assert_select "input#tech_spec_name", :name => "tech_spec[name]"
      assert_select "input#tech_spec_comment", :name => "tech_spec[comment]"
      assert_select "input#tech_spec_internal_review_signoff", :name => "tech_spec[internal_review_signoff]"
    end
  end
end
