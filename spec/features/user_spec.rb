require 'rails_helper'

feature "User creates a new account", %Q{
  As an user,
  I want to create an account
  and be asked to sign in again once logged in
} do

  scenario "User provides required information" do
    user = FactoryGirl.build(:user)
    visit root_path
    fill_in "First name", with: user.first_name
    fill_in "Last name", with: user.last_name
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
      click_on "Register"
    end
    expect(page).to have_content "Click here to Enter Charbrawls"
    click_on "Click here to Enter Charbrawls"
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
