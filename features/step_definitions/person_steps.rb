Given /^I have one\s+person "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  Fabricate(:person, :email => email, :password => password, :password_confirmation => password)
end

Given /^I am Facebook authorized$/ do
  current_person.update_attributes!(:facebook_uid => DEFAULT_FACEBOOK_UID, :facebook_token => DEFAULT_FACEBOOK_TOKEN)
end

Then /^I should be authorized with Facebook$/ do
  person = Person.where(:email => DEFAULT_EMAIL).first
  person.facebook_uid.should == DEFAULT_FACEBOOK_UID
  person.facebook_token.should == DEFAULT_FACEBOOK_TOKEN
end

When /^I sign in with Facebook Connect$/ do
  When %{I click "Login with Facebook"}
end

Given /^I am logged in as a Facebook user$/ do
  Given %{I am on the home page}
  When %{I sign in with Facebook Connect}
end

Given /^I am not signed in$/ do
  Given %{I am signed out}
end

Given /^I am signed out$/ do
  When %{I go to the sign out page} 
end

Given /^I am signed in$/ do
  Given %{I am logged in as a Facebook user}
end
