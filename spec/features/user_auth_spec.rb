require "rails_helper"

feature "User signs up" do
  scenario "successfully" do
    visit root_path
    click_on "Sign up"

    fill_in "Email", with: "user@example.com"
    fill_in "* Password", with: "password", exact: true
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    expect(page).to have_content "You have signed up successfully."
    expect(page).to have_content "Sign out"
  end
end

feature "User signs in" do
  scenario "successfully" do
    create(:user, email: "user@example.com", password: "password")

    visit root_path
    click_on "Sign in"

    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Log in"

    expect(page).to have_content "Signed in successfully."
    expect(page).to have_content "Sign out"
  end
end

feature "User signs out" do
  scenario "successfully" do
    create(:user, email: "user@example.com", password: "password")
    sign_in(email: "user@example.com", password: "password")

    visit root_path
    click_on "Sign out"

    expect(page).to have_content "Signed out successfully."
    expect(page).to have_content "Sign in"
  end
end
