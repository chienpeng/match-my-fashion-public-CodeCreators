Feature:Check options of field category details

	As a user
	So that I can clarify the related fields of my work on my profile
	I want to check options of fields including creators, services and makers when register

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
	Then I should be on the register professional page
