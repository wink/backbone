Given /^no ([^"]*)exists?$/ do |model_plural|
  model = model_plural.strip.gsub(' ', '_').tableize.singularize.camelize.constantize
  model.destroy_all
end

Then /^there should be (\d+) ([^"]*)with the following attributes:$/ do |count, model_plural, table|
  model = model_plural.strip.gsub(' ', '_').tableize.singularize.camelize.constantize
  Mongoid::Criteria.new(model).where(table.hashes.first).count.should == count.to_i
end

Then /^I should see a video$/ do
  Then %{I should see "" within ".video"}
end

Then /^I should see a cover flow$/ do
  Then %{I should see "" within ".coverflow"}
end

When /^I dump the response$/ do
  puts page.body
end

Then /^I should see "([^"]*)" within popup$/ do |content|
  Then %{I should see "#{content}" within "#fancybox-tmp"}
end

When /^(?:|I )click "([^"]*)"(?: within "([^"]*)")?$/ do |link, selector|
  with_scope(selector) do
    click_link(link)
  end
end