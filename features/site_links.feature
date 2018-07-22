Feature: Given a series of links
  When I visit the page
  The page should show up

  @api @errors @loggedin
  Scenario: Verify workbench shows up when I am logged in as an administrator
    Given I am logged in as a user with the "administrator" role
    And I clear the caches
    When I go to "/user"
    Then the response status code should be 200
    And I should see "Workbench"
    When I click "My Workbench"
    Then I should see "Moderation state"