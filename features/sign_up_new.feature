Feature:Fill out personal information and complete registration

	As a new user
	So that I can own an account at NXTFolio
	I want to fill out my personal information during the registration and go through the registration process without any confusion

Background: the new user have started the registration process

	Given I am on the login page
	When I sign up for an account
	And I press sign up button

Scenario: compelete basic information
	When I am on the register basic information page
	And I enter Amy to first name
	And I enter Yu to last name
	And I select "Jan" from month
	And I select "01" from day
	And I select "2017" from year
	And I select "Female" from gender
	And I enter College Station to city
	And I enter 1112223333 to phone number
	When I press save and continue button
	Then I should be on the register professional page
