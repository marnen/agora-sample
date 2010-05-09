Feature: List contacts
  As a user
  I can list contacts
  So I can look up contact information for people I know
  
  Scenario: Contact index lists all contacts
    Given I have the following contacts:
      | first_name | last_name | address                              |
      | John       | Smith     | 123 Main Street, Somewhere, NV 87654 |
      | Bill       | Jones     | 456 Side Street, Nowhere, AR 34567   |
    When I go to the contact index page
    Then I should see "Smith"
    And I should see "Jones"
    And I should see "Somewhere"
    And I should see "Nowhere"