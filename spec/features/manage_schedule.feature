Feature: Manage Schedule

	NOTE: "conference organizer" and "admin" (aka administrator) are considered synonymous in this file

	In order to store the schedule,
	as a conf. org.
	I want to add and edit the conf. schedule

	Background:
		Given I am logged in
		And a conference organizer goes to the schedule section of the admin panel

	Scenario: Conference organizer creates two sessions
		When the admin creates a new session for "Talk A"
		And the admin creates a new session for "Talk B"
		Then the admin should see "Talk A"
		And the admin should see "Talk B"
		And the sessions are in the correct order

	# Scenario: Conference organizer edits session
	# 	Given an existing session "Talk A"
	# 	When the admin is on the secdule section of the admin panel
	# 	And the admin changes some details for "Talk A"
	# 	And the admin confirms or saves those changed details
	# 	Then the admin should see their changes reflected in the admin panel index page
	# 	And the admin should also see their changes reflected in the details page for "Talk A"

	# Scenario: Conference organizer deletes session
	# 	Given an existing session "Talk A"
	# 	When the admin is on the schedule section of the admin panel
	# 	And the admin deletes "Talk A"
	# 	Then the schedule should no longer show "Talk A"
