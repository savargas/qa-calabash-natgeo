Feature: Launch the app and access the "Choose Your Experience" channels

@launch
  Scenario: Launch the app and verify the Experience screen is shown
    Given I am on the Experience Screen

  @natgeochannel
  Scenario: Launch the app and select the National Geographic Channel button
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
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

  @videoplaynatgeo
  Scenario: Tap on a National Geographic Channel Video and take a screenshot to verify playback
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I tap on the video titled "The Confrontation"
    Then I verify the video detail screen appears
    When I tap the video image
    Then I verify video is playing
      And I take a screenshot

  @videoplaynatwild
  Scenario: Tap on a National Geo Wild Channel Video and take a screenshot to verify playback
    Given I am on the Experience Screen
    When I select the Nat Geo Wild button
    Then I see the Nat Geo Wild home screen
    When I tap on the video titled "SharkFest"
    Then I verify the video detail screen appears
    When I tap the video image
    Then I verify video is playing
      And I take a screenshot

  @signin
  Scenario: Sign into a provider and verify the provider banner shows on the homes screen and settings screen
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I navigate to Settings
      And I select Provider Signin
    Then I see the Choose Provider screen
    When I search for the "Optimum" provider
      And I select the "Optimum" provider
    Then I see the provider Sign In screen
    When I type "research34" to name field
      And I type "support34" to password field
      And I press Login on the SignIn screen
    Then I should see the provider banner and logout button on the Settings screen
    When I press the Back button
    Then I should see the provider banner on the home screen

   @logout
   Scenario: Verify the app logs out successfully and the provider banners are no longer shown
     Given I am on the Experience Screen
      And I select the National Geographic Channel button
      And I should see the provider banner on the home screen
      And I see the National Geographic Channel home screen
     When I navigate to Settings
      And I select the logout button
     Then I should not see the provider and logout button on the Settings screen
     When I press the Back button
     Then I should not see the provider banner on the home screen

  @signinout
  Scenario: Verify sign in and sign out works correctly
    Given I am on the Experience Screen
    When I select the National Geographic Channel button
    Then I see the National Geographic Channel home screen
    When I login to the "Optimum" provider with email "research34" and password "support34"
    Then I should see the provider banner on the home screen
    When I logout
    Then I should not see the provider banner on the home screen

