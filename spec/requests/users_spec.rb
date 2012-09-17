require 'spec_helper'

describe "Creates new user" do
  it "creates new user" do
    # user = create(:user)
    visit new_user_path
    fill_in 'Email', :with => "Robin@Hood.com"
    fill_in 'First name', :with => "Robin"
    fill_in 'Last name', :with => "Hood"
    fill_in 'Username', :with => "rob666"
    # select'Business Analyst', :from => "Roles"
    # select 'FAO IT - Team One', :from => "Teams"
    click_button 'Add new User'
    current_path.should == users_path
    page.should have_selector('table')
  end
end

describe "Login" do
#   it "Should login correctly with the right username" do
#     visit sign_in_path
#     # fill_in 'Username', :with => "delta"
#     click_button 'Sign in'
#     save_and_open_page
#     page.should have_content('Dashboard')
#   end
  
  it "Should present an error message when an incorrect username is entered" do
    visit sign_in_path
    fill_in 'Username', :with => "666"
    click_button 'Sign in'
    current_path.should == sign_in_path
    page.should have_content('Unable')
  end
  
end
