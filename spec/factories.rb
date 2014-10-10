FactoryGirl.define do
  factory :user do
    first_name "Joe"
    last_name "Moma"
    password "12345678"
    sequence(:email) { |n| "user#{n}@email.com" }
  end

  factory :workout do
    id 2
    name "bum blaster"
  end

  factory :exercise do
    name "curls for the girls"
  end

  factory :workout_exercise_connector do
    rest_time 2
    sets 2
    reps 12
  end
end
