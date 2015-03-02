require "rails_helper"

feature "User creates a business" do
  scenario "successfully" do
    sign_in

    visit root_path
    click_on t("links.new_business")
    fill_in t("simple_form.labels.defaults.name"), with: "Example Company"
    fill_in(
      t("simple_form.labels.defaults.mission"),
      with: "Example mission statement"
    )
    click_on t("buttons.new_business")

    expect(page).to have_content "Example Company"
  end

  scenario "without business name" do
    sign_in

    visit root_path
    click_on t("links.new_business")
    click_on t("buttons.new_business")

    expect(page).to have_content t("headers.new_business")
    expect(page).to have_content "can't be blank"
  end
end

feature "User views a list of businesses" do
  scenario "and sees their own businesses" do
    user = create(:user, email: "user@example.com", password: "password")
    business_one = create(:business, user: user, name: "Business 1")
    business_two = create(:business, user: user, name: "Business 2")

    sign_in_with(email: user.email, password: user.password)

    visit businesses_path

    expect(page).to have_content business_one.name
    expect(page).to have_content business_two.name
  end

  scenario "and does not see any other users businessess" do
    user_one = create(:user, email: "user@example.com", password: "password")
    user_two = create(:user, email: "user+2@example.com", password: "password")

    business_one = create(:business, user: user_two, name: "Business 1")

    sign_in_with(email: user_one.email, password: user_one.password)

    visit businesses_path

    expect(page).not_to have_content business_one.name
  end
end
