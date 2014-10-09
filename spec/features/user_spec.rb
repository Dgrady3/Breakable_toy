require 'rails_helper'

feature "User adds a workout to their profile", %Q{
  As an user,
  I want to log a completed workout so that I can keep
  track of which workouts I have comepleted
} do

  scenario "User views their profile" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    expect(page).to have_content "#{user.first_name} #{user.last_name} "
  end

  scenario "User views a list of their personal workouts completed" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    click_on "View Workouts History"
    expect(page).to have_content "Workouts completed"
  end

  scenario "User successfully adds a workout" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    click_on "Add a workout"
    fill_in "Workout Name"
    fill_in "Exercise Name"
    fill_in "Rest time"
    fill_in "Sets"
    fill_in "Reps"

    expect(page).to have_content "The workout has been added!"
end

