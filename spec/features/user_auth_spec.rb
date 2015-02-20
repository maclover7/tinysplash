require "rails_helper"

feature "User signs up" do
  scenario "from the landing page" do
    visit root_path

    sign_up(email: "user@example.com", password: "password")

    expect(page).to have_content "You have signed up successfully."
  end

  scenario "from the sign up page" do
    visit new_user_registration_path

    sign_up(email: "user@example.com", password: "password")

    expect(page).to have_content "You have signed up successfully."
    expect(page).to have_content "Sign out"
  end

  private

  def sign_up(email:, password:)
    fill_in t("simple_form.labels.defaults.email"), with: email
    fill_in "user_password", with: password, exact: true
    fill_in(
      t("simple_form.labels.defaults.password_confirmation"),
      with: password
    )
    click_on t("buttons.sign_up")
  end
end

feature "User signs in" do
  scenario "successfully" do
    create(:user, email: "user@example.com", password: "password")

    visit root_path
    within ".navigation--main" do
      click_on t("links.sign_in")
    end

    fill_in t("simple_form.labels.defaults.email"), with: "user@example.com"
    fill_in t("simple_form.labels.defaults.password"), with: "password"
    click_on t("buttons.sign_in")

    expect(page).to have_content t("devise.sessions.signed_in")
    expect(page).to have_content t("links.sign_out")
  end
end

feature "User signs out" do
  scenario "successfully" do
    create(:user, email: "user@example.com", password: "password")
    sign_in(email: "user@example.com", password: "password")

    visit root_path
    click_on t("links.sign_out")

    expect(page).to have_content t("devise.sessions.signed_out")
    expect(page).to have_content t("links.sign_in")
  end
end
