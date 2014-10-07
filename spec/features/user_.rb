require 'rails_helper'

feature "User logs in there completed workout", %Q{
  As an user,
  I want to log a completed workout so that I can keep
  track of which workouts I have comepleted
} do

  scenario "User provides required information" do
    user = FactoryGirl.build(:user)
    visit root_path
    click_on "Workout Categories"
    click_on category.name
    click_on "Add to my list completed exercises"

  end

