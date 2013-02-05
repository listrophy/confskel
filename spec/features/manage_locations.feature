Feature: Manage Locations

  Background:
    Given I am logged in
    And I go to the Locations section

  Scenario: Conference organizer makes a new location
    When I create a new location "Location A"
    Then I should see my new location, "Location A" in the index page

  Scenario: Conference organizer changes a location
    Given an existing location "Location A"
    When I change some fields for the location "Location A"
    And I save those changes to the location
    Then I should see my changes to the location reflected in the index page

  Scenario: Conference organizer deletes a location
    Given an existing location "Location A"
    When I delete some location "Location A"
    Then I should no longer see "Location A"

  Scenario: Conference organizer uploads an initial image for a location
    Given a location "Location A" exists
    And I go to the Locations section
    And I edit location "Location A"
    When I upload a location image for "Location A"
    Then I should see the new location image for "Location A"
