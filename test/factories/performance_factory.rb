# 
# TO LOAD A 'PERFECT' PERFORMANCE AND STRESS TESTING ENVIRONMENT
# 
# FactoryGirl.create_list(:performance_project, 50)             # 50  Projects
# FactoryGirl.create_list(:performance_milestone, 100)          # 50  Projects
# FactoryGirl.create_list(:performance_deliverable, 200)        # 200 Deliverables
# FactoryGirl.create_list(:performance_ba_specs, 200)           # 200 BA Specs
# FactoryGirl.create_list(:performance_tech_specs, 200)         # 200 Tech Specs
# FactoryGirl.create_list(:performance_code, 200)               # 200 Tech Specs
# 
# 
# 

FactoryGirl.define do

  # PROJECT
  factory :performance_project, class: Project do
    name { Faker::Company.catch_phrase }
  end  

  # MILESTONE
  factory :performance_milestone, class: Milestone do
    software_release_id { SoftwareRelease.first(:order => 'RANDOM()').id }
    project_id { Project.first(:order => 'RANDOM()').id }
  end  
  
  # DELIVERABLE
  factory :performance_deliverable, class: Deliverable do
    # Team ID
    team_id { Team.first(:order => 'RANDOM()').id }

    # Milestone and Milestone ID
    milestone_id { Milestone.first(:order => 'RANDOM()').id }
    
    # Description
    sequence :description do |n|
      "Magic Deliverable #{n}"
    end
    
  end
  
  # BA SPECS
  factory :performance_ba_specs, class: BaSpec do
    deliverable_id  { Deliverable.first(:order => 'RANDOM()').id }
    user_id         { User.first(:order => 'RANDOM()').id }
    name            { Faker::Lorem.sentence }
    comments        { Faker::Lorem.sentence }
    progress        { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
    effort          { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
  end

  # TECH SPECS
  factory :performance_tech_specs, class: TechSpec do
    deliverable_id  { Deliverable.first(:order => 'RANDOM()').id }
    user_id         { User.first(:order => 'RANDOM()').id }
    name            { Faker::Lorem.sentence }
    comments        { Faker::Lorem.sentence }
    progress        { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
    effort          { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
  end
  
  # CODE
  factory :performance_code, class: Code do
    deliverable_id  { Deliverable.first(:order => 'RANDOM()').id }
    user_id         { User.first(:order => 'RANDOM()').id }
    comments        { Faker::Lorem.sentence }
    progress        { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
    effort          { ['10', '20', '30', '40', '50', '60', '70', '80', '90', '100'].sample }
  end
  
end
