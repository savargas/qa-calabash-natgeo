Feature: Launch the app and access the "Choose Your Experience" channels

#@launch
  Scenario: Launch the app and verify the Experience screen is shown
    Given I am on the Experience Screen

  @natgeochannel
  Scenario: Launch the app and select the National Geographic Channel button
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I select the Channel button
    Then I am on the Experience Screen

  @natgeowild
  Scenario: Launch the app, select the channel button then return to the Experience screen and select Nat Geo Wild
    Given I am on the Experience Screen
    When I select the Nat Geo Wild button
    Then I see the Nat Geo Wild home screen
    When I select the Channel button
    Then I am on the Experience Screen

  @videoplay
  Scenario: Tap on a National Geographic Channel Video and take a screenshot to verify playback
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I tap on the video titled "Weegee the Famous"
    Then I verify the video detail screen appears
    When I tap the video image
    Then I verify video is playing
     And I take a screenshot

#  @signin
#  Scenario: Sign into a provider and verify the provider banner shows on the homescreen, and video thumbnails no
#  longer shows locked

