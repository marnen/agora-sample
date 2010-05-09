Feature: Create contacts
  As a user
  I can create new contacts
  So that I can store info about new people as I get to know them
  
  Scenario: Create contact with only the required fields
    Given I have no contacts
    When I go to the new contact page
    And I fill in the following:
      | First name | John                                    |
      | Last name  | Smith                                   |
      | Address    | 359 Broadway, 3rd floor, Troy, NY 12180 |
    And I press "Save"
    Then I should have 1 contact
    And I should be on the contact index page