Feature: Approve a proposal

  In order to easily manage speakers
  As a conference organizer,
  I want to be able to quickly transition between proposals and speakers

  Background:
    Given I am logged in
    And a proposal exists for 'Jane' the potential speaker
    And a proposal exists for a potential speaker without a name
    And I go to the Proposals section

  Scenario: 'Approve' proposal links are available on the proposals page
    Then I should see an 'Approve' link for the proposal for 'Jane'

  Scenario: Conference organizer approves a proposal that has a speaker's name
    When I approve 'Jane' the potential speaker
    Then I should be on the Edit speakers page for that speaker
    And I should see a message indicating 'Jane' was added as a speaker

  Scenario: No approve link is available if a proposal has no name
    Given I am on the Proposals section
    Then I should not see an 'Approve' link for the proposal without a name

  Scenario: 'View speaker' links are shown in place of 'Approve' proposal links when a speaker already exists
    Given a proposal exists for 'Bob' the potential speaker
    And a speaker exists who is called 'Bob'
