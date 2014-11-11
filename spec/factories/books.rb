# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "Some title"
    author_id 1
    year 2014
  end
end
