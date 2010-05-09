Feature: Search contacts
  As a user
  I can search contacts by name
  So I can look up contact information for people I know
  
  Scenario: Case-insensitive search on complete names only
    Given I have the following contacts:
      | first_name | last_name | address                              |
      | Anne       | Taylor    | 456 Side Street, Nowhere, AR 34567   |
      | Taylor     | Swift     | 123 Main Street, Somewhere, NV 87654 |
      | Paul       | Robinson  | 789 10th Street, New York, NY 10001  |
    When I go to the contact index page
    And I fill in "Search" with "taylor"
    And I press "Search"
    Then I should see "Swift" followed by "Anne"
    And I should not see "Robinson"
