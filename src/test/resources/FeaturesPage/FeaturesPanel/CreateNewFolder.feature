@ST_32073 @CreateNewFolder
Feature: Create new folder

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Editor"
When I click icon 'Update from Git' in panel 'Features'
And I click on 'Select All' checkbox on pop-up "UPDATE DATA FROM GIT"
And I click on button "Update" on pop-up "UPDATE DATA FROM GIT"
Then I see success notification ""
And I select folder "feature" in the tree
And I click button 'New folder' in panel 'Features'
And I see pop up "New folder" is opened

@SC_124880 @REL-480
Scenario: Name folder using invalid symbols
When I type "!@#" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
And I see a notification message "Allowed characters: ' A-z 0-9 _ . - '" under "1" required fields on pop-up "New folder"
And I see pop up "New folder" was not closed
And I click on button "Cancel" on pop-up "New folder"

@SC_124881 @REL-476
Scenario: Name new folder using dot in the beginning
When I type ".dot" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
And I see a notification message "Can't start with '.'" under "1" required fields on pop-up "New folder"
And I see pop up "New folder" was not closed
And I click on button "Cancel" on pop-up "New folder"

@SC_124882 @REL-471
Scenario: Name folder using valid symbols
When I type "folderName_1" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
Then I see that new folder is successfully created
And I see that the new folder is selected in the tree
When I click icon 'Delete' in panel 'Features'
And I click on button "Delete" on pop-up "Delete folder"
Then I see that the folder was successfully deleted

@SC_124883 @REL-444
Scenario: Name duplicate folder
When I type "folderName_1" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
Then I see that new folder is successfully created
And I see that the new folder is selected in the tree
And I select folder "feature" in the tree
And I click button 'New folder' in panel 'Features'
And I see pop up "New folder" is opened
When I type "folderName_1" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
And I see pop up "New folder" was not closed
And I click on button "Cancel" on pop-up "New folder"