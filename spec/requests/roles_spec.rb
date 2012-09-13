require 'spec_helper'

describe "Create new user role" do
  it "creates new role" do
    # user = FactoryGirl.create(:user)
    visit new_role_path
    fill_in 'Role', :with => "Systems Analyst"
    click_button 'Add new Role'
    current_path.should == roles_path
  end

  it "does not allow blank roles to be created" do
    visit new_role_path
    fill_in 'Role', :with => ""
    click_button 'Add new Role'
    page.should have_content('error')
  end  
  
end
