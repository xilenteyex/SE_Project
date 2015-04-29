Feature: Monitor the performance of LHWs
As a DHO 
So that I can keep track of my district’s performance   
I want to view the performance reports of LHWs in my district 

Scenario: View the scores of LHWs
Given I am on the performance analysis page 
When I click on the individual scores button
Then I should see a page with the scores of the LHWs of my district 

Scenario: Detailed view of LHW scores
Given I am on the Individual Scores page
When I select a Lady Health Worker
And I click on the Details button
Then I should see the page displaying the performance metrics of that Lady health Worker

Scenario: View best performers
Given I am on the Individual Scores page
When I click on Best Performers
Then I should see the LHWs with the 5 highest scores

Scenario: View worst performers
Given I am on the Individual Scores page
When I click on Worst Performers
Then I should see the LHWs with the 5 lowest scores

Scenario: Notify best performers
Given I am on the Best Performers page
When I click on Notify
Then notifications should be sent to the 5 best performers

Scenario: Notify worst performers
Given I am on the Worst Performers page
When I click on Notify
Then notifications should be sent to the 5 worst performers
