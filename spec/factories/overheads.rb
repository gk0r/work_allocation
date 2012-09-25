# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :overhead do
    description "MyString"
    user_id 1
    effort 1
  end
end
