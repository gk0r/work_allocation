FactoryGirl.define do
  
  factory :team do
    sequence :name do |n|
      "Team #{n}"
    end
  end
  
  factory :role do
    trait :ba do
      name 'Business / Systems Analyst'
    end
    
    trait :tech do
      name 'Technical Programmer'
    end
    
    trait :tl do
      name 'Team Leader'
    end
  end

  # Create our user
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    sequence :username do
      "username#{n}"
    end
    
    sequence :email do
      "user#{n}@example.com"
    end
  end

  
  factory :software_release do
    month = ['March', 'June', 'September', 'December'].sample
    year = ['2014', '2015', '2016'].sample
    name month + ' ' + year + ' Major Release'
    date Date.parse('09 ' + month + ' '+ year)
  end
  
  
  factory :project do
    name Faker::Company.catch_phrase
  end
  
  
  factory :milestone do
    project
    software_release
    before (:create) do |milestone|
      milestone.software_release = SoftwareRelease.first
    end
  end
  
  factory :deliverable do
    team
    milestone

    sequence :description do |n|
      "Magic Deliverable #{n}"
    end
  end
  
  
  factory :ba_spec do
    user
    deliverable
    name "Best BA Spec in the world"
  end  
  
  factory :tech_spec do
    deliverable
    name "Best Tech Spec in the world"
  end
  
  factory :code do
    deliverable
    comments Faker::Lorem.sentence
  end
    
  
end