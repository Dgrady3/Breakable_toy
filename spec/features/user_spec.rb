require 'rails_helper'

feature "User fills in information about their profile", %Q{
  As an user,
  I want to edit my profile page so that I can tell people
  more about myself and some workout statistics
} do

  scenario "User successfully adds a workout" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    click_on "Edit stats "
    fill_in "Max Bench"
    fill_in "Max Squat"
    fill_in "Max Deadlift"
    fill_in "Best Mile:"
    expect(page).to have_content "Stats have been updated!"
  end
end

