Feature: User information
	In order to track my Properties
	As a user
	I want to be able to list, create, update, and delete my user information

		Background:
			Given an initial business

				Scenario: List Users
					Given I am on the 'users' page
					And for the "th", I should see "Name"
					And for the "th", I should see "Contact email"
					And for the "th", I should see "Contact phone"
					And for the "th", I should see "Admin"
					And for the "td", I should see "Talal Shoeb"
					And for the "td", I should see "talal@cmu.edu"
					And for the "td", I should see "97477155015"
					And for the "td", I should see "true"
					And for the "body", I should see a link to "New User"

				Scenario: Create User
					Given I am on the 'New User' page
					When I enter "chaxz@cmu.edu" for "Email"
					And I enter "Srinjoy" for "Name"
					And I enter "chaxz93@gmail.com" for "Contact email"
					And I enter "55566090897" for "Contact phone"
					And I check the "Admin" box
					And I enter "abc123" for "user_password"
					And I enter "abc123" for "user_password_confirmation"
					And I click on the button named "Create User"
					Then I should see "User was successfully created."
					And I should see "Email:"
					And I should see "chaxz@cmu.edu"
					And I should see "Name:"
					And I should see "Srinjoy"
					And I should see "Contact email:"
					And I should see "chaxz@cmu.edu"
					And I should see "Contact phone:"
					And I should see "55566090897"
					And I should see "Admin:"
					And I should see "true"
					 
				Scenario: Update Owner
					Given I am on the 'users' page
					When I follow the "Edit" link for "Talal Shoeb"
					And I change the email address to "a@yahoo.com"
					And I click the "Update" button
					Then I should see "User was successfully updated."
					And I should see "Email: a@yahoo.com"

				Scenario: Delete Owner
   					Given I am on the 'users' page
    				When I follow the "Destroy" link for "Talal Shoeb"
    				Then I should not see "Talal Shoeb"	


