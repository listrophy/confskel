Feature: Manage Static Text

  Background:
    Given I am logged in
    And I go to the "Static Texts" section

  Scenario: Conference organizer makes new static text
    When I create new static text "Policy 1" with a paragraph
    Then I should see my new static text, and some of that paragraph on the index page

  Scenario: Conference organizer changes some static text
    Given some static text "Policy 1"
    When I change the text for the static text item "Policy 1"
    And I save those changes to the static text
    Then I should see my changes to the static text reflected in the index page

  Scenario: Conference organizer deletes some static text
    Given some static text "Policy 1"
    When I delete some static text "Policy 1"
    Then I should no longer see "Policy 1"
