FactoryGirl.define do
  factory :user do
    first_name "Joe"
    last_name "Moma"
    password "12345678"
    sequence(:email) { |n| "user#{n}@email.com" }
  end
end
