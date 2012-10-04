require 'spec_helper'

describe "Visit Excel Data Dump for: Milestones" do
  it "works" do
    component = create(:milestone)
    visit(milestones_path + '.xls')
    page.should have_content component.project.name
  end
end


describe "Visit Excel Data Dump for: Deliverables" do
  it "works" do
    component = create(:deliverable)
    visit(deliverables_path + '.xls')
    page.should have_content component.description
  end
end

describe "Visit Excel Data Dump for: BA Specs" do
  it "works" do
    component = create(:ba_spec)
    visit(ba_specs_path + '.xls')
    page.should have_content component.name
  end
end

describe "Visit Excel Data Dump for: Tech Specs" do
  it "works" do
    component = create(:tech_spec)
    visit(tech_specs_path + '.xls')
    page.should have_content component.name
  end
end

describe "Visit Excel Data Dump for: Code" do
  it "works" do
    component = create(:code)
    visit(code_index_path + '.xls')
    page.should have_content component.comments
  end
end