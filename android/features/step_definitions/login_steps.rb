require 'calabash-android/calabash_steps'

When(/^I select Reset Preview Passes$/) do
  @app.settings_screen.reset_pass_full.touch
end

And(/^I select Provider Signin$/) do
  @app.settings_screen.provider_signin.touch
end

Then(/^I see the Choose Provider screen$/) do
  @app.providerlist_screen.page_title.await
end

When(/^I select the "([^"]*)" provider$/) do |provider_name|
  touch("* marked:'#{provider_name}'")
end

When(/^I search for the "([^"]*)" provider$/) do |provider_name|
  @app.providerlist_screen.scroll_to_name(provider_name)
end

Then(/^I see the provider Sign In screen$/) do
  @app.providersignin_screen.await
end

When(/^I type "([^"]*)" to name field$/) do |username|
  @app.providersignin_screen.username_field(username)
end

And(/^I type "([^"]*)" to password field$/) do |password|
  @app.providersignin_screen.password_field(password)
end

And(/^I press Login on the SignIn screen$/) do
  press_enter_button
end

Then(/^I should see the provider banner on the home screen$/) do
  @app.home_screen.channelButton.await
  @app.home_screen.provider_traits
end

Then(/^I should see the provider banner and logout button on the Settings screen$/) do
  @app.settings_screen.await
  @app.settings_screen.provider_traits
end

When(/^I select the logout button$/) do
  @app.settings_screen.logout.touch
end

Then(/^I should not see the provider and logout button on the Settings screen$/) do
  check_element_does_not_exist("* marked:'#{@app.settings_screen.current_provider}'")
  check_element_does_not_exist("* marked:'#{@app.settings_screen.logout}'")
end

Then(/^I should not see the provider banner on the home screen/) do
  check_element_does_not_exist(@app.home_screen.tv_provider_label)
  check_element_does_not_exist(@app.home_screen.provider_banner)
end

When(/^I login to the "([^"]*)" provider with username "([^"]*)" and password "([^"]*)"$/) do |provider_name, username,
    password|
  @app.home_screen.menu.touch
  @app.menu_screen.settings.touch
  @app.settings_screen.await
  @app.settings_screen.provider_signin.touch

  @app.providerlist_screen.page_title.await
  @app.providerlist_screen.scroll_to_name(provider_name)
  touch("* marked:'#{provider_name}'")
  @app.providersignin_screen.await
  @app.providersignin_screen.username_field(username)
  @app.providersignin_screen.password_field(password)
  press_enter_button

  @app.settings_screen.await
  puts "Await finished"
  @app.settings_screen.provider_traits
  puts "checking traits successful"
  press_back_button
end

When(/^I logout$/) do
  @app.home_screen.menu.touch
  puts "touch menu"
  @app.menu_screen.settings.touch
  puts "touch menu"
  @app.settings_screen.await
  puts "settings shows successfully"
  @app.settings_screen.logout.touch
  puts "touch logout"
  check_element_does_not_exist("* marked:'#{@app.settings_screen.current_provider}'")
  puts "current provider doesn't show"
  check_element_does_not_exist("* marked:'#{@app.settings_screen.logout}'")
  puts "logout button doesn't show"
  press_back_button
end