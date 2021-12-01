Feature:Ask user to agree terms and conditions

	As a web owner
	So that I can clarify terms and conditions to users
	I want to display terms and conditions, and ask users to click on agree when register

	Background: the new user have started the registration process

	Given I am on the login page
	When I sign up for an account
	And I press sign up button

Scenario: Choose field categories
	When I am on the register basic information page
	And I enter Amy to first name
	And I enter Yu to last name
	And I select "Jan" from month
	And I select "01" from day
	And I select "2017" from year
	And I select "Female" from gender
	And I enter College Station to city
	And I enter 1112223333 to phone number
	And I select "designer" for creators
	And I select "influencers" for services
	And I type "assembling" for makers
	When I press save and continue button
	Then I should still be on the register basic information page
	And I check to agree on conditions
	When I press save and continue button
	Then I should be on the register professional page
