Feature: Facebook Connect

Scenario: logged in
  Given I am on the home page
  When I sign in
  Then I should see "Hi Micah Winkelspecht"

Scenario: logout
  Given I am signed in
  And I am on the home page
  When I click "Not you?"
  Then I should not see "Hi Micah Winkelspecht"