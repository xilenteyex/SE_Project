Feature generate reports
As a LHW
So that I can aggregate my records
I want to generate reports about Pregnant Women, Child vaccination, Inventory and monthly report

Scenario List of Pregnant Women
Given I am on the Reports Page 
When I press the Pregnant Women Report button
Then I should see the list of pregnant women in my area
And I should see their treatment history


Scenario List of Children under 5
Given I am on the Reports Page 
When I press the Child Vaccination Report button
Then I should see the list of children under 5 years old in my area
And I should see their vaccination details


Scenario Keep track of inventory
Given I am on the Reports Page 
When I press the Inventory button
Then I should see the list medicines used in a month
And I should see the number of medicines left

Scenario Generate Monthly Reports
Given I am on the Reports Page 
When I press the Monthly Report button
Then I should see the my monthly report generated
And the report should be submitted to my supervisor
