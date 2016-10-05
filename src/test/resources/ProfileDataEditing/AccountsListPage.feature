@AccountsListPage @ST_250591285
Feature: Accounts list page

@REL-696 @SC_205390319
Scenario: Check submitting form without completing all mandatory fields
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
When I navigate to page 'Profile'
And I click on Create button for Credentials on Profile page
And I click button 'Add' for new credential
And I see a notification message "Field is required" under "3" required fields on Profile page
And I click button 'Cancel' for new credential
And I see account is not in the table 'Credentials'

@REL-702 @SC_173953030
Scenario: Check that account can be added at TTS block
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Project Settings"
When I selected menu "Add account" in dropdown 'Account' at block TTS
Then I see pop up "Add account" is opened
When I populated all required fields on pop-up 'Add account'
And I click on button "Add" on pop-up "Add account"
Then I see pop up "Add account" was closed
And I see success notification "Account was created successfully!"
And I see account was added to the dropdown 'Account' on TTS block
And I see account was added to the dropdown 'Account' on VCS block
When I navigate to page 'Profile'
Then I see my account in table 'Credentials'
And I click button 'Delete' for created account in panel 'Credentials' in page 'User Profile'

@REL-703 @SC_224905075
Scenario: Check that added account can be canceled at TTS block
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Project Settings"
When I selected menu "Add account" in dropdown 'Account' at block TTS
Then I see pop up "Add account" is opened
When I populated all required fields on pop-up 'Add account'
And I click on button "Cancel" on pop-up "Add account"
Then I see pop up "Add account" was closed
When I navigate to page 'Profile'
And I see account is not in the table 'Credentials'

@REL-704 @SC_248220910
Scenario: Check that account can be added at VCS block
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Project Settings"
When I selected menu "Add account" in dropdown 'Account' at block VCS
Then I see pop up "Add account" is opened
When I populated all required fields on pop-up 'Add account'
And I click on button "Add" on pop-up "Add account"
Then I see pop up "Add account" was closed
Then I see success notification "Vcs was changed successfully!"
And I see account was added to the dropdown 'Account' on TTS block
And I see account was added to the dropdown 'Account' on VCS block
When I navigate to page 'Profile'
Then I see my account in table 'Credentials'
And I click button 'Delete' for created account in panel 'Credentials' in page 'User Profile'

@REL-705 @SC_183159506
Scenario: Check that added account can be canceled at VCS block
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Project Settings"
When I selected menu "Add account" in dropdown 'Account' at block VCS
Then I see pop up "Add account" is opened
When I populated all required fields on pop-up 'Add account'
And I click on button "Cancel" on pop-up "Add account"
Then I see pop up "Add account" was closed
When I navigate to page 'Profile'
And I see account is not in the table 'Credentials'

@REL-798 @ignore @SC_257285826
Scenario: Check pagination panel for accounts
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
When I navigate to page 'Profile'
And I have more than "10" accounts
When I click on button "2" on pagination panel
Then I am on the "2" page on pagination panel
When I click on button "1" on pagination panel
Then I am on the "1" page on pagination panel
When I click on button ">" on pagination panel
Then I am on the "last" page on pagination panel
When I click on button "<" on pagination panel
Then I am on the "1" page on pagination panel

