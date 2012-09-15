require 'spec_helper'

describe "Visit Excel Data Dump for: Deliverables" do
  it "works" do
    get(deliverables_path + '.xls')
    response.status.should be(200)
  end
end

describe "Visit Excel Data Dump for: BA Specs" do
  it "works" do
    get(ba_specs_path + '.xls')
    response.status.should be(200)
  end
end

describe "Visit Excel Data Dump for: Tech Specs" do
  it "works" do
    get(tech_specs_path + '.xls')
    response.status.should be(200)
  end
end

describe "Visit Excel Data Dump for: Code" do
  it "works" do
    get(code_index_path + '.xls')
    response.status.should be(200)
  end
end

describe "Visit Excel Data Dump for: Milestones" do
  it "works" do
    get(milestones_path + '.xls')
    response.status.should be(200)
  end
end
