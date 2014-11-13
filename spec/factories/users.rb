FactoryGirl.define do
    # Define a basic devise user.
    factory :user do
        email "user@yopeso.com"
        password "bookshelf"
        password_confirmation "bookshelf"
    end
end
