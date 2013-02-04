Feature: Manage Deadlines

	Background:
		Given I am logged in
		And I go to the Deadlines section

	Scenario: Conference organizer makes a new deadline
		When I create a new deadline "Deadline A"
		Then I should see my new deadline, "Deadline A" in the index page

	Scenario: Conference organizer changes a deadline
		Given an existing deadline "Deadline A"
		When I change some fields for the deadline "Deadline A"
		And I save those changes to the deadline
		Then I should see my changes to the deadline reflected in the index page

	Scenario: Conference organizer deletes a deadline
		Given an existing deadline "Deadline A"
		When I delete some deadline "Deadline A"
		Then I should no longer see "Deadline A"
