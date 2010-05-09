Given /^I have no contacts$/ do
  Contact.delete_all
end

Then /^I should have (\d*) contact(?:s?)$/ do |n|
  Contact.count.should == n.to_i
end