Feature: Launch the app and navigate the app screens

@launch
  Scenario: Launch the app and verify the Experience screen is shown
    Given I am on the Experience Screen

  @natgeochannel
  Scenario: Launch the app and select the National Geographic Channel button
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I should see the cast tutorial screen
    When I close the cast tutorial screen
    Then I see the National Geographic Channel home screen
      And I am on the Experience Screen

  @natgeowild
  Scenario: Launch the app, select the channel button then return to the Experience screen and select Nat Geo Wild
    Given I am on the Experience Screen
    When I select the Nat Geo Wild button
    Then I see the Nat Geo Wild home screen
      And I am on the Experience Screen

  @fullresetpass
  Scenario: Tap Settings and reset the preview pass
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I navigate to Settings
      And I select Reset Preview Passes


