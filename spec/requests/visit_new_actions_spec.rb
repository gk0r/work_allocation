require 'spec_helper'

describe "Click all 'New' buttons" do
  
  before :each do
    @user = create(:user)
    visit sign_in_path
    fill_in 'Username', :with => @user.username
    click_button 'Sign in'    
  end
  
  it "clicks New User button" do
    visit new_user_path
    page.should have_content "Users"
    current_path.should == new_user_path
  end
  
  it "clicks New Team button" do
    visit new_team_path
    page.should have_content "Teams"
    current_path.should == new_team_path
  end
  
  it "clicks New Role" do
    visit new_role_path
    page.should have_content "Role"
    current_path.should == new_role_path
  end
  
  it "clicks New Projects" do
    visit new_project_path
    page.should have_content "Project"
    current_path.should == new_project_path
  end
  
  it "clicks New Software Releases" do
    visit new_software_release_path
    page.should have_content "Software Release"
    current_path.should == new_software_release_path
  end
  
  it "clicks New RFCs" do
    visit new_rfc_path
    page.should have_content "RFC"
    current_path.should == new_rfc_path
  end
  
  it "clicks New Milestone button" do
    visit new_milestone_path
    page.should have_content "Milestone"
    current_path.should == new_milestone_path
  end

  it "clicks New Deliverable button" do
    visit new_deliverable_path
    page.should have_content "Deliverable"
    current_path.should == new_deliverable_path
  end
  
  it "clicks New BA Spec button" do
    visit new_ba_spec_path
    page.should have_content "BA Spec"
    current_path.should == new_ba_spec_path
  end
  
  it "clicks New Tech Spec button" do
    visit new_tech_spec_path
    page.should have_content "Tech Spec"
    current_path.should == new_tech_spec_path
  end
  
  it "clicks New Code button" do
    visit new_code_path
    page.should have_content "Code"
    current_path.should == new_code_path
  end        

  it "clicks New Overhead button" do
    visit new_overhead_path
    page.should have_content "Overhead"
    current_path.should == new_overhead_path
  end        

  
end
