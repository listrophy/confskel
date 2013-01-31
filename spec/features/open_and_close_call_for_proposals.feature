Feature: Open and close call for proposals

	Background:
		Given I am logged in
		And I am on the "Conference Options" section

	Scenario: Conference organizer makes a new set of conference options

		Note: conference options are options global to a single conference

		When There are no conference options
		And I make a new set of conference options
		Then I should see my new set of conference options on the index page

	Scenario: Conference organizer edits a set of conference options
		When There is an existing set of conference options
		And I change some conference option
		Then I should see my changes reflected on the index page

	Scenario: Conference organizer deletes a set of conference options
		When There is an existing set of conference options
		And I delete the conference options
		Then I should see a message indicating my conference options were deleted
		And I should no longer see any conference options on the index page

	Scenario: Conference organizer can only make one set of conference options
		When There is an existing set of conference options
		And I try to make a new set of conference options
		Then I should see an error telling me I can only make one set of conference options
