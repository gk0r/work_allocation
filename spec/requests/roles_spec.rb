require 'spec_helper'

describe "Create new user role" do
  
  before :each do
    @user = create(:user)
    visit sign_in_path
    fill_in 'Username', :with => @user.username
    click_button 'Sign in'    
  end
  
  it "creates new role" do
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
