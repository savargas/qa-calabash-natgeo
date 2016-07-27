Feature: Verify that the user is able to sign in to a provider

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
    When I login to the "Optimum" provider with username "research34" and password "support34"
    Then I should see the provider banner on the home screen
    When I logout
    Then I should not see the provider banner on the home screen