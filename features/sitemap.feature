Feature: Given a series of links

  @api @errors @sitemap
  Scenario Outline: Verify the links work
    Given I clear the page cache
    When I go to "<url>"
    Then the response status code should be <status_code>
    Then I clear the watchdog logs
    Examples:
      | url       | status_code |
      | /         | 200         |
      | /user     | 200         |
      | /search   | 200         |
      | /dne      | 404         |
