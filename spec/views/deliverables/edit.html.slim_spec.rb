require 'spec_helper'

describe "deliverables/edit" do
  before(:each) do
    @deliverable = assign(:deliverable, stub_model(Deliverable,
      :description => "MyString",
      :ba_spec_id => 1,
      :tech_spec_id => 1,
      :code_id => 1,
      :testing_id => 1
    ))
  end

  it "renders the edit deliverable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliverables_path(@deliverable), :method => "post" do
      assert_select "input#deliverable_description", :name => "deliverable[description]"
      assert_select "input#deliverable_ba_spec_id", :name => "deliverable[ba_spec_id]"
      assert_select "input#deliverable_tech_spec_id", :name => "deliverable[tech_spec_id]"
      assert_select "input#deliverable_code_id", :name => "deliverable[code_id]"
      assert_select "input#deliverable_testing_id", :name => "deliverable[testing_id]"
    end
  end
end
