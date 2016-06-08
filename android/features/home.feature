Feature: Launch the app and swipe the screen 

@launch
  Scenario: Launch the app and swipe up
    Given I am on the Home Screen
    When I swipe up 2 times
    Then I see the Series Title
      But I should not see "slide_date"
    When I swipe down 4 times
    Then I see the carousel
