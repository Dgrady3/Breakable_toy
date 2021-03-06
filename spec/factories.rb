FactoryGirl.define do
  factory :user do
    name "Joe"
    password "12345678"
    age 22
    location "Baston"
    occupation "Being a baas"
    gym "Golds?"
    about "I'm cool"
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

  factory :stat do
    user_id 2
    bench 255
    squat 235
    dead_lift 200
    mile '6min'
  end
end
