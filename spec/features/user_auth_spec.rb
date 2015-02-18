require "rails_helper"

feature "User signs up" do
  scenario "successfully" do
    visit root_path
    click_on t("links.sign_up")

    fill_in t("simple_form.labels.defaults.email"), with: "user@example.com"
    fill_in("user_password", with: "password")
    fill_in(
      t("simple_form.labels.defaults.password_confirmation"),
      with: "password"
    )
    click_on t("buttons.sign_up")

    expect(page).to have_content t("devise.registrations.signed_up")
    expect(page).to have_content t("links.sign_out")
  end
end

feature "User signs in" do
  scenario "successfully" do
    create(:user, email: "user@example.com", password: "password")

    visit root_path
    click_on t("links.sign_in")

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
