Feature: Facebook Connect

Scenario: not logged in, not authorized
  Given I am on the home page
  When I click "Login with Facebook"
  Then I should be authorized with Facebook

Scenario: logged in, not authorized
  Given I am signed in
  When I go to the home page
  Then I should be authorized with Facebook

Scenario: logged in, authorized
  Given I am signed in
  And I am Facebook authorized
  When I go to the home page
  Then I should be authorized with Facebook
  
Scenario: not logged in, authorized
  Given I am on the home page
  And I am Facebook authorized
  Then I should be authorized with Facebook