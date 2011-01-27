Feature: Footer links 
  Scenario: contact us page
    Given I am on the home page
    When I click "Contact Us"
    Then I should see "Contact Us" within "#content"
  
  Scenario: about us page
    Given I am on the home page
    When I click "About Us"
    Then I should see "About Us" within "#content"

  Scenario: terms of service page
    Given I am on the home page
    When I click "Terms"
    Then I should see "Terms" within "#content"

  Scenario: privacy policy page
    Given I am on the home page
    When I click "Privacy Policy"
    Then I should see "Privacy Policy" within "#content"
