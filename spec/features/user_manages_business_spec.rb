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
