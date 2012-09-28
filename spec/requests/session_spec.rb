require 'spec_helper'

describe "Signing up" do

  before :each do
    @user = create(:user)
    visit sign_in_path
    fill_in 'Username', :with => @user.username
    click_button 'Sign in'    
  end

  it "should have a valid model" do
    @user.should be_valid
  end
  
  it "Signing in with correct credentials" do
    visit sign_in_path
    fill_in 'Username', :with => @user.username
    click_button 'Sign in'
  end
  
  it "should display the new user in the user list" do
    visit users_path
    page.should have_content "Users"
    page.should have_content @user.name
  end
  
  it "should allow the user to update his name" do
    visit edit_user_path(@user.id)
    fill_in "First name", :with => "Jack"
    click_button "Update"
    current_path.should == users_path
    visit users_path
    page.should have_content "Jack"
  end
  
end
