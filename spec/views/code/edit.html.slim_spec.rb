require 'spec_helper'

describe "code/edit" do
  before(:each) do
    @code = assign(:code, stub_model(Code))
  end

  it "renders the edit code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => code_index_path(@code), :method => "post" do
    end
  end
end
