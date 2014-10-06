require 'rails_helper'

feature "User views a list of workouts", %{
  As a user,
  I want to view a list of workout categories"
} do

  scenario "User views " do
    visit root_path
    click_on "Find a workout"
    expect(page).to have_content "Workout Categories"
    expect(page).to have_content "Back"
    expect(page).to have_content "Chest"
    expect(page).to have_content "Arms"
    expect(page).to have_content "Legs"
    expect(page).to have_content "Shoulders"
    expect(page).to have_content "Core"
    expect(page).to have_content "Cardio"
  end
end
