Given /^I have no contacts$/ do
  Contact.delete_all
end

Given /^I have the following contacts:$/ do |table|
  Contact.delete_all
  
  table.hashes.each do |hash|
    Contact.create! hash
  end
end

Then /^I should have (\d*) contact(?:s?)$/ do |n|
  Contact.count.should == n.to_i
end