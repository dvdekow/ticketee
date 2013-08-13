Given /^I am on the ()homepage$/ do |page_name|
visit (page_name)
end

When /^I follow (.*?)$/ do |project|
 @project = Project.new
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  @arg1 = arg2
  @project.name = arg1
end

When /^I press "(.*?)"$/ do |button|
  click_on button
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end


