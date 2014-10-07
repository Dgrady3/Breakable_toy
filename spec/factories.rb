FactoryGirl.define do

  factory :user do
    first_name "Joe"
    last_name "Moma"
    sequence :email do |n|
      "#{n}fake@fake.com"
    end
    password "alsofake"
  end
end
