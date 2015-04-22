Feature Evaluate the performance of LHWs
As a Lady Health Supervisor
So that I can keep track of LHWs under me
I want to be able to evaluate their performance

Scenario score the LHWs
Given I am on the Rate LHWs page
When I check a number next to a LHW 
Then that number should be assigned as the score to the Lady Health Worker

Scenario generate report summary 
Given I am on the home page
When I click the Generate Report
Then I should see the aggregate report generated

Scenario submit report summary
Given I am on the View My Report page
When I click on Submit Report
Then the report should be submitted to the DHO