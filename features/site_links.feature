Feature: Given a series of links
  When I visit the page
  The page should show up

  @api
  Scenario: Verify the home page shows up
    When I go to the homepage
    Then the response status code should be 200
