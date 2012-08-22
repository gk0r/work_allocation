require 'spec_helper'

describe "tech_specs/new" do
  before(:each) do
    assign(:tech_spec, stub_model(TechSpec,
      :deliverable_id => 1,
      :name => "MyString",
      :comment => "MyString",
      :internal_review_signoff => false
    ).as_new_record)
  end

  it "renders new tech_spec form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tech_specs_path, :method => "post" do
      assert_select "input#tech_spec_deliverable_id", :name => "tech_spec[deliverable_id]"
      assert_select "input#tech_spec_name", :name => "tech_spec[name]"
      assert_select "input#tech_spec_comment", :name => "tech_spec[comment]"
      assert_select "input#tech_spec_internal_review_signoff", :name => "tech_spec[internal_review_signoff]"
    end
  end
end
