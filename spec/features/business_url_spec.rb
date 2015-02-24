require "rails_helper"

feature "User can visit a business's home page" do
  scenario "using a friendly URL slug" do
    create(:business, name: "Example Ltd")

    visit "/example-ltd"

    expect(page).to have_content "Example Ltd"
  end
end
