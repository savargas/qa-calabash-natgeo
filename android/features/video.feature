Feature: Verify that the user can play videos

@videoplaynatgeo
  Scenario: Tap on a National Geographic Channel Video and take a screenshot to verify playback
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I tap on the video titled "No Appeal"
    Then I verify the video detail screen appears
    When I tap the video image
    Then I verify video is playing
      And I take a screenshot

@videoplaynatwild
  Scenario: Tap on a National Geo Wild Channel Video and take a screenshot to verify playback
    Given I am on the Experience Screen
    When I select the Nat Geo Wild button
    Then I see the Nat Geo Wild home screen
    When I tap on the video titled "Baboon Queen"
    Then I verify the video detail screen appears
    When I tap the video image
    Then I verify video is playing
      And I take a screenshot