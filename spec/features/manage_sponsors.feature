Feature: Manage Sponsors

	In order to promote sponsors
	as a conf. org.,
	I want to be able to maintain sponsor details through an admin panel.

	Background:
		Given I am logged in
		And I go to the Sponsors section

	Scenario: Conference organizer makes a new sponsor
		When I create a new sponsor "Sponsor A"
		Then I should see my new sponsor, "Sponsor A" in the index page
		And I should see the info for the sponsor "Sponsor A"

	Scenario: Conference organizer changes a sponsor
		Given an existing sponsor "Sponsor A"
		When I change some fields for the sponsor "Sponsor A"
		And I save those changes to the sponsor
		Then I should see my changes to the sponsor reflected in the index page

	Scenario: Conference organizer deletes a sponsor
		Given an existing sponsor "Sponsor A"
		When I delete some sponsor "Sponsor A"
		Then I should no longer see "Sponsor A"
