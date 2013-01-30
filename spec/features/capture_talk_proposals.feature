Feature: Capture talk proposals

	In order to review talk proposals,
	as a conference organizer,
	I want to have a place to store incoming talk proposals

	Note: though talk proposals can be edited through the admin panel
	they will most commonly be added through the (yet unmade) web UI
	(by the actual person proposing the talk)

	Background:
		Given I am logged in
		And I am on the "Proposals" section

	Scenario: Conference organizer can make a new talk proposal
		When I make a new talk proposal "The best talk proposal"
		Then I should see my new talk proposal "The best talk proposal" on the index page

	Scenario: Conference organizer can make a new talk proposal
		When I edit a talk proposal "The best talk proposal"
		Then I should see my updated talk proposal "The best talk proposal" on the index page

	Scenario: Conference organizer can make a new talk proposal
		When I delete a talk proposal "The best talk proposal"
		Then I should not see the talk proposal "The best talk proposal" on the index page
