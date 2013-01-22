Feature: Upload speaker images

	NOTE: this feature may be merged with 'Manage Speakers'

	NOTE: "conference organizer" and "admin" (aka administrator) are considered synonymous in this file

	Background:
		Given a conference organizer goes to the speaker images section of the admin panel.

	Scenario: Conference organizer uploads an initial image for a speaker
		When the admin uploads an image for "Speaker A"
		Then the admin should see the new image for "Speaker A"

	Scenario: Conference organizer uploads a new image for a speaker
		When the admin uploads a new image for "Speaker A"
		Then the admin should see the new image for "Speaker A"
		And the previous image for "Speaker A" should no longer be visible
