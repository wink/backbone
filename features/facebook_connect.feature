Feature: Facebook Connect

Scenario: login with facebook
  Given I am on the home page
  When I click "Login"
  Then I should be authorized with Facebook
  And I should see "Hi Micah Winkelspecht"
  And I should not see "Login with Facebook"

Scenario: logout
  Given I am signed in
  When I click "Not you?"
  Then I should not see "Hi Micah Winkelspecht"