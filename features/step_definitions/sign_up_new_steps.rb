Given /^am on the (login page)/ do |page_name|
  visit path_to(page_name)
end

When /^am on the (register basic information page)/ do |page_name|
  visit path_to(page_name)
end

Then /^I should be on the (register professional page)/ do |page_name|
  current_path = URI.parse(current_url).path
  expect(current_path).to eq(path_to(page_name))
end

And /^I enter the email address (.@gmail.com) in sign up/ do |text|
  fill_in(email, :with => text)
end

And /^I press "(.*)" button/ do |button|
  click_button button
end

And /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

And /^I enter (.*) to (.*)/ do |value, field|
  fill_in(field, :with => value)
end

When /^I sign up for an account$/ do
    @login_info = LoginInfo.create!({
      :email => "csce606login@gmail.com",
      :password => "Hello123!",
      :password_confirmation => "Hello123!"
    })
end

And /^(?:|I )(un)?check "([^"]*)" for "([^"]*)"$/ do |value, field|
  uncheck ? uncheck("field[#{value}]") : (check("field[#{value}]"))
end

And /^(?:|I )type "([^"]*)" for "([^"]*)"$/ do |value, field|
  type(value, :to=> field[Others])
end

When /I (un)?check to agree on conditions/ do
  uncheck ? uncheck(:terms_of_service) : (check(:terms_of_service))
end

Then /^I should still be on the (register basic information page)/ do |page_name|
  current_path = URI.parse(current_url).path
  expect(current_path).to eq(path_to(page_name))
end
