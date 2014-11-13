# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do |f|
    f.title "Some title"
    f.author_id 1
    f.year 2014
  end
  factory :invalid_book, parent: :book do |f| 
    f.title nil 
  end
end
