require 'calabash-android/calabash_steps'

Given(/^I am on the Home Screen$/) do
  @app.home_screen.await
  end
end



