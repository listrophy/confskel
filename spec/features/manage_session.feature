Feature: Manage Session

  In order to store the schedule,
  as a conf. org.
  I want to add and edit the conf. schedule

  Background:
    Given I am logged in
    And I go to the Sessions section

  Scenario: Conference organizer creates two sessions
    When I create a session for "Talk A"
    And I go to the Sessions section
    And I create a new session for "Talk B"
    And I go to the Sessions section
    Then I should see "Talk A"
    And I should see "Talk B"

  Scenario: Conference organizer edits session
    Given an existing session "Talk A"
    When I go to the Sessions section
    And I change some details for the session "Talk A"
    And I save those changed details to the session
    Then I should see my changes to the session reflected in the index page

  Scenario: Conference organizer deletes session
    Given an existing session "Talk A"
    When I am on the Sessions section
    And I delete the session "Talk A"
    Then I should no longer see "Talk A"

  Scenario: Conference organizer selects a preexisting location
    Given an existing session "Talk A"
    And an existing location "Location A"
    When I am on the Sessions section
    And I open the edit page for the session "Talk A"
    And select the location "Location A" for the session
    And I save those changed details to the session
    Then I should see my new location for the session reflected in the index page

  Scenario: Conference organizer selects a preexisting speaker
    Given an existing session "Talk A"
    And an existing speaker "Speaker A"
    When I am on the Sessions section
    And I open the edit page for the session "Talk A"
    And select the speaker "Speaker A" for the session
    And I save those changed details to the session
    Then I should see my new speaker for the session reflected in the index page
