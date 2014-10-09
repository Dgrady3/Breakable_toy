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
    click_on "Profile Page"
    click_on "Log a workout"

    # build a workout object with some exercise objects
    prev_workout_count = Workout.count # we'll need this to test that a new workout was successfully created later on
    workout = FactoryGirl.build(:workout)
    exercises = FactoryGirl.build_list(:exercise, 3)

    fill_in "Workout Name", with: workout.name
    select workout.date, from: "Date Completed" # you can use the date_select form helper here, as long as workout date is a datetime field

    # add a couple of boxes to add exercises
    2.times do
      click_on "add exercise"
    end

    # fill in each exercise form
    # (You'll need to use the within blocks b/c you'll have multiple "Exercise", "Sets", etc. fields on your page.
    # you won't know what CSS selectors to use for the within blocks until the form is actually built.
    # then you can inspect element and figure out how to properly target them.)
    within "some CSS selector for the FIRST exercise form" do
      fill_in "Exercise", with: exercises[0].name
      fill_in "Rest time", with: exercises[0].rest
      fill_in "Sets", with: exercises[0].sets
      fill_in "Reps", with: exercises[0].reps
    end

    within "some CSS selector for the SECOND exercise form" do
      fill_in "Exercise", with: exercises[1].name
      fill_in "Rest time", with: exercises[1].rest
      fill_in "Sets", with: exercises[1].sets
      fill_in "Reps", with: exercises[1].reps
    end

    within "some CSS selector for the THIRD exercise form" do
      fill_in "Exercise", with: exercises[2].name
      fill_in "Rest time", with: exercises[2].rest
      fill_in "Sets", with: exercises[2].sets
      fill_in "Reps", with: exercises[2].reps
    end

    expect(page).to have_content "The workout has been added!"
    # also test that your workout has been saved and has the right number of exercises
    expect(Workout.count).to eq prev_workout_count + 1
    expect(Workout.last.exercises.count).to eq exercises.length # we expect the workout we just created to have 3 exercises
  end
end
