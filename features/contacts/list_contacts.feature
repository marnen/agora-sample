Feature: List contacts
  As a user
  I can list contacts
  So I can look up contact information for people I know
  
  Scenario Outline: Contact index lists all contacts in alphabetical order
    Given I have the following contacts:
      | first_name | last_name | address                              |
      | John       | Smith     | 123 Main Street, Somewhere, NV 87654 |
      | Bill       | Jones     | 456 Side Street, Nowhere, AR 34567   |
    When I go to the contact index <format>
    Then I should see "Jones" followed by "Smith"
    And I should see "Somewhere"
    And I should see "Nowhere"
    
    Examples:
      | format        |
      | page          |
      | JSON API call |
    
  Scenario: Contact index displays a message if no contacts are found
    Given I have no contacts
    When I go to the contact index page
    Then I should see "We couldn't find any contacts"