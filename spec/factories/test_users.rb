# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_user do
    email "MyString"
    password "MyString"
  end
end
