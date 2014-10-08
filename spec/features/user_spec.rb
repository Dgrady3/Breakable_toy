require 'rails_helper'

feature "User adds a workout to their profile", %Q{
  As an user,
  I want to log a completed workout so that I can keep
  track of which workouts I have comepleted
} do

  scenario "User provides required information" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    save_and_open_page
    visit root_path

    click_on "Profile Page"

   expect(page).to have_content "#{user.first_name} #{user.last_name} "
  end
end

