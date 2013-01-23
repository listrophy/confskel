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
		And I change some details for "Talk A"
		And I save those changed details
		Then I should see my changes reflected in the index page

	Scenario: Conference organizer deletes session
		Given an existing session "Talk A"
		When I am on the Sessions section
		And I delete "Talk A"
		Then the schedule should no longer show "Talk A"
