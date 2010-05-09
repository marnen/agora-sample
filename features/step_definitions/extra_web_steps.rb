Then /^I should see "([^\"]*)" followed by "([^\"]*)"$/ do |string1, string2|
  regexp = Regexp.new("#{Regexp.escape string1}.*#{Regexp.escape string2}", Regexp::MULTILINE)
  if defined?(Spec::Rails::Matchers)
    response.should contain(regexp)
  else
    assert_contain regexp
  end
end

Then /^the response should be success$/ do
  response.should be_success
end

Then /^the response status should be (\d+)$/ do |status|
  response.code.should == status
end
