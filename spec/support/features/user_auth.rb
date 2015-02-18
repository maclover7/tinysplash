module Features
  def sign_in
    create(:user, email: "user@example.com", password: "password")

    visit new_user_session_path

    fill_in t("simple_form.labels.defaults.email"), with: "user@example.com"
    fill_in t("simple_form.labels.defaults.password"), with: "password"
    click_button t("buttons.sign_in")
  end

  def sign_in_with(email:, password:)
    visit new_user_session_path

    fill_in t("simple_form.labels.defaults.email"), with: email
    fill_in t("simple_form.labels.defaults.password"), with: password
    click_button t("buttons.sign_in")
  end
end
