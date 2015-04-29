Feature: generate reports
As a LHW
So that I can aggregate my records
I want to generate reports about Pregnant Women, Child vaccination, Inventory and monthly report

Scenario: Generate Monthly Reports
Given I am on the Reports Page 
When I press the Monthly Report button
Then I should see the my monthly report generated
And the report should be submitted to my supervisor
