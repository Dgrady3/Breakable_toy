require "rails_helper"

feature "User logs a workout", %Q{
  As an user,
  I want to log a completed workout so that I can keep
  track of which workouts I have comepleted
} do

  scenario "User logs a new workout" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path


    click_link("Profile Page")
    click_on "Log a new workout"

    prev_workout_count = Workout.count
    workout = FactoryGirl.build(:workout)
    exercises = FactoryGirl.build(:exercise)
    @workout_exercise_connector = FactoryGirl.build(:workout_exercise_connector)

    fill_in "Workout Name", with: workout.name
    click_on "Add Exercise"

    fill_in "Exercise", with: exercises.name
    fill_in "Rest time", with: workout_exercise_connector.rest_time
    fill_in "Sets", with: workout_exercise_connector.sets
    fill_in "Reps", with: workout_exercise_connector.reps



    expect(page).to have_content "The workout has been added!"
    # also test that your workout has been saved and has the right number of exercises
    expect(Workout.count).to eq prev_workout_count + 1
    expect(Workout.last.exercises.count).to eq exercises.length # we expect the workout we just created to have 3 exercises
  end
end
