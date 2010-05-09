Feature: Create contacts
  As a user
  I can create new contacts
  So that I can store info about new people as I get to know them
  
  Background:
    Given I have no contacts
    When I go to the new contact page
    And I fill in the following:
      | First name | John                                    |
      | Last name  | Smith                                   |
      | Address    | 359 Broadway, 3rd floor, Troy, NY 12180 |
  
  Scenario: Create contact with only the required fields
    When I press "Save"
    Then I should have 1 contact
    And I should be on the contact index page
    
  Scenario: Create contact with optional fields
    When I fill in the following:
      | Phone number   | (518) 555-1212 |
      | E-mail address | john@smith.org |
    And I press "Save"
    Then I should have 1 contact
    And I should be on the contact index page
    
  Scenario Outline: Creating contact without required data fails
    When I fill in "<field>" with ""
    And I press "Save"
    Then I should have 0 contacts
    And I should see "That contact could not be created."
    
    Examples:
      | field      |
      | First name |
      | Last name  |
      | Address    |