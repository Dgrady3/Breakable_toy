require 'rails_helper'

feature "User fills in information about their profile", %Q{
  As an user,
  I want to edit my profile page so that I can tell people
  more about myself.
} do

  scenario "User successfully adds a workout" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    click_on "Edit Profile"
    fill_in "Age", with: user.age
    fill_in "Location", with: user.location
    fill_in "Occupation", with: user.occupation
    fill_in "Gym", with: user.gym
    fill_in "About", with: user.about
    choose "male"
    click_on 'Update User'
    expect(page).to have_content "Updated profile!"
  end
end