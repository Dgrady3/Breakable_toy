require "rails_helper"

feature "User logs a workout", %Q{
  As an user,
  I want to log a completed workout so that I can keep
  track of which workouts I have comepleted
} do

  scenario "User logs a workout name" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path


    click_link("Profile Page")
    click_on "Log a new workout"

    prev_workout_count = Workout.count
    workout = FactoryGirl.build(:workout)
    fill_in "Workout Name", with: workout.name
    click_on "Create Workout session"

    expect(page).to have_content "The session has been added!"
    expect(Workout.count).to eq prev_workout_count + 1
  end
end
