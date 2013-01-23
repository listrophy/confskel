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
		And I should see all "Speaker A"s fields

	# Scenario: Conference organizer changes a speaker
	# 	When I change some fields for "Speaker A"
	# 	And I confirms or saves those changes
	# 	Then I should see their changes to "Speaker A" in the index page
	# 	And I should see their changes to "Speaker A" in the details page for "Speaker A"

# 	Scenario: Conference organizer deletes a speaker
# 		When I delete some speaker "Speaker A"
# 		Then I should no longer see "Speaker A"
