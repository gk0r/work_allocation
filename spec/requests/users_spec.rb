require 'spec_helper'

describe "Creates new user" do
  it "creates new user"  do 
    visit root_url
    click_link 'Register'
    fill_in 'Email', :with => "Robin@Hood.com"
    fill_in 'First name', :with => "Robin"
    fill_in 'Last name', :with => "Hood"
    fill_in 'Username', :with => "rob666"
    click_button 'Add new User'
    current_path.should == users_path
    page.should have_selector('table')
  end
end

describe "Login" do

  it "Should present an error message when an incorrect username is entered" do
    visit sign_in_path
    fill_in 'Username', :with => "666"
    click_button 'Sign in'
    current_path.should == sign_in_path
    page.should have_content('Unable')
  end
  
  it 'Should login if provided with a valid username' do
    user = create(:user)
    visit sign_in_path
    fill_in "Username", :with => user.username
    click_button "Sign in"
    page.should have_content("Dashboard")
    page.should_not have_content("sign in")
  end
  
end
