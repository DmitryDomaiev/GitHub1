@Pages @ST_206022836
Feature: Pages routing

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"

@REL-745 @ignore @SC_210510474
Scenario: Check Sign In/Out link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@REL-744 @ignore @SC_204787370
Scenario: Check settings link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@REL-747 @SC_200444891
Scenario: Check link on Dashboard page
Then I can see path matches RegEx "[default]dashboard" in browser route

@REL-748 @SC_185829277
Scenario: Check link on Edit Features page
And I select project "default"
And I am in page "Editor"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/editor" in browser route

@REL-749 @SC_251710738
Scenario: Check link on Project Settings page
And I select project "default"
And I am in page "Project Settings"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/settings" in browser route

@REL-750 @SC_212080593
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Statistics Page"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/activity" in browser route

@REL-751 @SC_261471717
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Feature Management"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/management" in browser route

@REL-813 @SC_217390912
Scenario: Check dashboard page is displayed when redirected to non existing page
And I select project "WRONG"
Then I can see path matches RegEx "[default]dashboard" in browser route

