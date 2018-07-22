Feature: Show my homepage works with different things
  When I visit the page
  The page should show up

  Background:
    Given I clear the page cache
    When I go to the homepage

  @api @nojs @homepage
  Scenario: Verify the home page shows up
    Then the response status code should be 200

  @api @javascript @homepage
  Scenario: Verify the home page shows up
    Then the response status code should be 200
    And I take a screenshot "test.png"

  @api @javascript @homepage
  Scenario: Verify the home page shows up
    Then the response status code should be 200
    Given I clear the watchdog logs
    And I take a screenshot "test.png"
