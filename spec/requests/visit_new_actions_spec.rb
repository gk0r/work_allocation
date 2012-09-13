require 'spec_helper'

describe "Visit all New Actions" do

  it "Visits New Users" do
    get new_user_path
    response.status.should be(200)
  end
  
  it "Visits New Teams" do
    get new_team_path
    response.status.should be(200)
  end
  
  it "Visits New Role" do
    get new_role_path
    response.status.should be(200)
  end
  
  it "Visits New Projects" do
    get new_project_path
    response.status.should be(200)
  end
  
  it "Visits New Software Releases" do
    get new_software_release_path
    response.status.should be(200)
  end
  
  it "Visits New RFCs" do
    get new_rfc_path
    response.status.should be(200)
  end
  
  it "Visits Milestones" do
    get new_milestone_path
    response.status.should be(200)
  end

  it "Visits New Deliverables" do
    get new_deliverable_path
    response.status.should be(200)
  end
  
  it "Visits New BA Specs" do
    get new_ba_spec_path
    response.status.should be(200)
  end
  
  it "Visits New Tech Specs" do
    get new_tech_spec_path
    response.status.should be(200)
  end
  
  it "Visits New Code" do
    get new_code_path
    response.status.should be(200)
  end        
  
end
