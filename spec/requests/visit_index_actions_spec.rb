require 'spec_helper'

describe "Visit all Index Actions" do

  describe "Visits rool URL" do
    it "Visits root_url" do
      get root_url
      response.status.should be(200)
    end
  end
  
  it "Visits Users" do
    get users_path
    response.status.should be(200)
  end
  
  it "Visits Teams" do
    get teams_path
    response.status.should be(200)
  end
  
  it "Visits Roles" do
    get roles_path
    response.status.should be(200)
  end
  
  it "Visits Projects" do
    get projects_path
    response.status.should be(200)
  end
  
  it "Visits Software Releases" do
    get software_releases_path
    response.status.should be(200)
  end
  
  it "Visits RFCs" do
    get rfcs_path
    response.status.should be(200)
  end
  
  it "Visits Milestones" do
    get milestones_path
    response.status.should be(200)
  end

  it "Visits Deliverables" do
    get deliverables_path
    response.status.should be(200)
  end
  
  it "Visits BA Specs" do
    get ba_specs_path
    response.status.should be(200)
  end
  
  it "Visits Tech Specs" do
    get tech_specs_path
    response.status.should be(200)
  end
  
  it "Visits Code" do
    get code_index_path
    response.status.should be(200)
  end        
  
end
