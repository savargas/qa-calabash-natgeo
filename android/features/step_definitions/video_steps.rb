require 'calabash-android/calabash_steps'

When(/^I tap on the video titled "([^"]*)"$/) do |video_title|
  @app.home_screen.episode_title(video_title).touch
end

Then(/^I verify the video detail screen appears$/) do
  @app.videodetail_screen.page_title.await
end

And(/^I tap the video image$/) do
  @app.videodetail_screen.video_image.touch
  sleep(10)
end

Then(/^I verify video is playing$/) do
  sleep(5)
  @app.video_screen.await
end