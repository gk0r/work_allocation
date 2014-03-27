require 'spec_helper'

describe "tsts/new" do
  before(:each) do
    assign(:tst, stub_model(Tst,
      :deliverable_id => "MyString",
      :user_id => "MyString",
      :planned_tests => "",
      :executed_tests => "",
      :status => "MyString",
      :comment => "MyString"
    ).as_new_record)
  end

  it "renders new tst form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tsts_path, "post" do
      assert_select "input#tst_deliverable_id[name=?]", "tst[deliverable_id]"
      assert_select "input#tst_user_id[name=?]", "tst[user_id]"
      assert_select "input#tst_planned_tests[name=?]", "tst[planned_tests]"
      assert_select "input#tst_executed_tests[name=?]", "tst[executed_tests]"
      assert_select "input#tst_status[name=?]", "tst[status]"
      assert_select "input#tst_comment[name=?]", "tst[comment]"
    end
  end
end
