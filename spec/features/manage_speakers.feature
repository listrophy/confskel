Feature: Manage Speakers

	In order to promote speakers
	as a conf. org.,
	I want to be able to maintain speaker details through an admin panel.

	Background:
		Given I am logged in
		And I go to the Speakers section

	Scenario: Conference organizer makes a new speaker
		When I create a new speaker "Speaker A"
		Then I should see my new speaker, "Speaker A" in the index page
		And I should see the info for the speaker "Speaker A"

	Scenario: Conference organizer changes a speaker
		Given an existing speaker "Speaker A"
		When I change some fields for the speaker "Speaker A"
		And I save those changes to the speaker
		Then I should see my changes to the speaker reflected in the index page

	Scenario: Conference organizer deletes a speaker
		Given an existing speaker "Speaker A"
		When I delete some speaker "Speaker A"
		Then I should no longer see "Speaker A"
