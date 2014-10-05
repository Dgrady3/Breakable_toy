FactoryGirl.define do

  factory :user do
    first_name "Humphrey"
    last_name "Bogart"
    sequence :email do |n|
      "#{n}crazyemail@something.gov"
    end
    password "woooooooo2"
  end
end
