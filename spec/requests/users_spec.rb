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
