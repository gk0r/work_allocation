# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tst do
    deliverable_id "MyString"
    user_id "MyString"
    planned_tests ""
    executed_tests ""
    status "MyString"
    comment "MyString"
  end
end
