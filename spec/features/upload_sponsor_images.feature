Feature: Upload sponsor images

	NOTE: this feature may be merged with 'Manage Speakers'

	NOTE: "conference organizer" and "admin" (aka administrator) are considered synonymous in this file

	Background:
		Given a conference organizer goes to the sponsor images section of the admin panel.

	Scenario: Conference organizer uploads an initial image for a sponsor
		When the admin uploads an image for "Sponsor A"
		Then the admin should see the new image for "Sponsor A"

	Scenario: Conference organizer uploads a new image for a sponsor
		When the admin uploads a new image for "Sponsor A"
		Then the admin should see the new image for "Sponsor A"
		And the previous image for "Sponsor A" should no longer be visible
