require 'calabash-android/calabash_steps'

Given(/^I am on the Experience Screen$/) do
  if @app.experience_screen.experience_state_true
    @app.experience_screen.await
  else
    @app.home_screen.channelButton.touch
    @app.experience_screen.await
  end
end

When(/^I select the National Geographic Channel button$/) do
  @app.experience_screen.natchannel.touch
end

Then(/^I see the National Geographic Channel home screen$/) do
  @app.home_screen.natGeoChannel.await
end

When(/^I select the Nat Geo Wild button$/) do
  @app.experience_screen.natgeo.touch
end

Then(/^I see the Nat Geo Wild home screen$/) do
  @app.home_screen.natGeoWild.await
end

When(/^I select the Channel button$/) do
  @app.home_screen.channelButton.await
  @app.home_screen.channelButton.touch
end

And(/^I navigate to Settings$/) do
  @app.home_screen.channelButton.await
  @app.home_screen.menu.touch
  @app.menu_screen.settings.touch
  @app.settings_screen.await
end

Then(/^I should see the cast tutorial screen/) do
  @app.casttutorial_screen.await
end

When(/^I close the cast tutorial screen/) do
  @app.casttutorial_screen.cast_tut_close.touch
end