Feature: Upload sponsor images

  Background:
    Given a sponsor "Sponsor A" exists
    And I am logged in
    And I go to the Sponsors section
    And I edit sponsor "Sponsor A"

  Scenario: Conference organizer uploads an initial image for a sponsor
    When I upload a sponsor image for "Sponsor A"
    Then I should see the new sponsor image for "Sponsor A"

    When I go to the Sponsors section
    Then I should see the sponsor image for "Sponsor A" on the index
