require 'rails_helper'

feature "User fills in information about their profile", %Q{
  As an user,
  I want to edit my profile page so that I can tell people
  more about myself and some workout statistics
} do

  scenario "User successfully adds a workout" do
    user = FactoryGirl.create(:user)
    stat = FactoryGirl.create(:stat)
    sign_in_as(user)
    visit root_path
    click_on "Profile Page"
    click_on "Edit your current goals"
    fill_in "Max Bench", with: stat.bench
    fill_in "Squat Max", with: stat.squat
    fill_in "Dead lift Max", with: stat.dead_lift
    fill_in "Best Mile time", with: stat.mile
    save_and_open_page
    click_on 'submit'
    expect(page).to have_content "Your Goals were successfully updated!"
    expect(page).to_not have_content "No current goals"
  end
end
