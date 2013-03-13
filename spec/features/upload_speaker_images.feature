Feature: Upload speaker images

	Background:
		Given a speaker "Speaker A" exists
		And I am logged in
		And I go to the Speakers section
		And I edit speaker "Speaker A"

	Scenario: Conference organizer uploads an initial image for a speaker
		When I upload a speaker image for "Speaker A"
		Then I should see the new speaker image for "Speaker A"

  Scenario: Conference organizer uploads an alternate initial image for a speaker
    When I upload an alternate speaker image for "Speaker A"
    Then I should see the new alternate speaker image for "Speaker A"
