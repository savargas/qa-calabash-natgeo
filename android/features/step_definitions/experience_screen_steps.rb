require 'calabash-android/calabash_steps'

Given(/^I am on the Experience Screen$/) do
  if @app.experience_screen.experience_state
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
end

Then(/^I verify video is playing$/) do
  @app.video_screen.await
end

