Feature: Manage Speakers

	NOTE: "conference organizer" and "admin" (aka administrator) are considered synonymous in this file

	Background:
		Given a conference organizer goes to the speakers section of the admin panel.

	Scenario: Conference organizer deletes a speaker
		When the admin deletes some speaker "Speaker A"
		Then the admin should no longer see "Speaker A" in the list of speakers

	Scenario: Conference organizer makes a new speaker
		When the admin creates a new user
		Then the admin should see their new speaker in the index page
		And the admin should be able to see their new speaker in its own details page

	Scenario: Conference organizer changes a speaker
		When the admin changes some fields for "Speaker A"
		And the admin confirms or saves those changes
		Then the admin should see their changes to "Speaker A" in the index page
		And the admin should see their changes to "Speaker A" in the details page for "Speaker A"
