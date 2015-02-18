# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  require "devise/orm/active_record"

  config.case_insensitive_keys = [:email]
  config.expire_all_remember_me_on_sign_out = true
  config.mailer_sender = "tinysplash@example.com"
  config.password_length = 8..128
  config.reconfirmable = true
  config.reset_password_within = 6.hours
  config.scoped_views = true
  config.sign_out_via = :delete
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.strip_whitespace_keys = [:email]
end
