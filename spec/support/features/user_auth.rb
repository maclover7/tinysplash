module Features
  def sign_in(email:, password:)
    visit new_user_session_path

    fill_in t("simple_form.labels.defaults.email"), with: email
    fill_in t("simple_form.labels.defaults.password"), with: password

    click_on t("buttons.sign_in")
  end
end
