Feature:
As a LHW
So that I manage my inventory efficiently
I want to generate the report of medicines used every month



Scenario: Keep track of inventory
Given I am on the Reports Page
When I press the Inventory button
Then I should see the list medicines used in a month
And I should see the number of medicines left
