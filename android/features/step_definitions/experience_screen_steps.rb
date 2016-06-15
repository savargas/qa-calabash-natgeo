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
  @app.home_screen.destinationWild.await
end

When(/^I select the Channel button$/) do
  @app.home_screen.channelButton.await
  @app.home_screen.channelButton.touch
end

When(/^I tap on the video titled "([^"]*)"$/) do |video_title|
  @app.home_screen.episode_title(video_title).touch
end

Then(/^I verify the video detail screen appears$/) do
  @app.videodetail_screen.video_page_title.await
end

And(/^I tap the video image$/) do
  @app.videodetail_screen.video_image.touch
  sleep(10)
end

Then(/^I verify video is playing$/) do
  sleep(5)
  @app.video_screen.await
end

And(/^I navigate to Settings$/) do
  @app.experience_screen.natchannel.touch
  @app.home_screen.natGeoChannel.await
  @app.home_screen.menu.touch
  @app.menu_screen.settings.touch
  @app.settings_screen.await
end

When(/^I select Reset Preview Passes$/) do
  @app.settings_screen.reset_pass_full.touch
end