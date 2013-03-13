Feature: Show all fields in the dashboard
  In order to effectively manage information for my conference
  as a conference organizer
  I want to see all available fields of each model on both its index and view pages

	Background:
		Given I am logged in

	Scenario: Fields are visible for deadlines
    Given an existing deadline "Deadline A"
    Then I should see the following fields on the index page for deadlines:
      | field |
      | end   |
      | name  |
      | start |
    And I should see the following fields on the show page for deadlines:
      | field |
      | end   |
      | name  |
      | start |
    And I should see the following fields on the edit page for deadlines:
      | field |
      | end   |
      | name  |
      | start |

  Scenario: Fields are visible for locations
    Given an existing location "Location A"
    Then I should see the following fields on the index page for locations:
      | field       |
      | address     |
      | description |
      | image       |
      | name        |
    And I should see the following fields on the show page for locations:
      | field       |
      | address     |
      | description |
      | image       |
      | name        |
    And I should see the following fields on the edit page for locations:
      | field       |
      | address     |
      | description |
      | image       |
      | name        |

  Scenario: Fields are visible for proposals
    Given an existing proposal "Proposal A"
    Then I should see the following fields on the index page for proposals:
      | field         |
      | audience      |
      | description   |
      | email         |
      | given_before  |
      | justification |
      | name          |
      | title         |
      | twitter       |
      | session_type  |
    And I should see the following fields on the show page for proposals:
      | field         |
      | audience      |
      | description   |
      | email         |
      | given_before  |
      | justification |
      | name          |
      | title         |
      | twitter       |
      | session_type  |
    And I should see the following fields on the edit page for proposals:
      | field         |
      | audience      |
      | description   |
      | email         |
      | given_before  |
      | justification |
      | name          |
      | title         |
      | twitter       |
      | session_type  |

  Scenario: Fields are visible for sessions
    Given an existing session "Session A"
    Then I should see the following fields on the index page for sessions:
      | field        |
      | description  |
      | end          |
      | location_id  |
      | room         |
      | speaker_id   |
      | start        |
      | title        |
      | session_type |
    And I should see the following fields on the show page for sessions:
      | field        |
      | description  |
      | end          |
      | location_id  |
      | room         |
      | speaker_id   |
      | start        |
      | title        |
      | session_type |
    And I should see the following fields on the edit page for sessions:
      | field        |
      | description  |
      | end          |
      | location_id  |
      | room         |
      | speaker_id   |
      | start        |
      | title        |
      | session_type |

  Scenario: Fields are visible for speakers
    Given an existing speaker "Speaker A"
    Then I should see the following fields on the index page for speakers:
      | field                   |
      | bio                     |
      | company_name            |
      | company_url             |
      | name                    |
      | twitter                 |
      | website                 |
      | image                   |
      | alternate_speaker_image |
      | github                  |
      | slides                  |
      | rating_page             |
      | talk_page               |
    And I should see the following fields on the show page for speakers:
      | field           |
      | bio             |
      | company_name    |
      | company_url     |
      | name            |
      | twitter         |
      | website         |
      | image           |
      | alternate_image |
      | github          |
      | slides          |
      | rating_page     |
      | talk_page       |
    And I should see the following fields on the edit page for speakers:
      | field           |
      | bio             |
      | company_name    |
      | company_url     |
      | name            |
      | twitter         |
      | website         |
      | image           |
      | alternate_image |
      | github          |
      | slides          |
      | rating_page     |
      | talk_page       |

  Scenario: Fields are visible for sponsors
    Given an existing sponsor "Sponsor A"
    Then I should see the following fields on the index page for sponsors:
      | field             |
      | description       |
      | name              |
      | sponsorship_level |
      | twitter           |
      | website           |
      | image             |
    And I should see the following fields on the show page for sponsors:
      | field             |
      | description       |
      | name              |
      | sponsorship_level |
      | twitter           |
      | website           |
      | image             |
    And I should see the following fields on the edit page for sponsors:
      | field             |
      | description       |
      | name              |
      | sponsorship_level |
      | twitter           |
      | website           |
      | image             |
