Feature Visit details
As a Lady Health worker
So that I can store details of a visit 
I want to be able to fill the in the following forms:
Family Planning
Child Health
Maternal Health
Treatment Record

Scenario Register house
Given I am on the Entry page
When I fill in the house Id
And fill in the number of people 
And record the name of the head of the household
Then a record for that house should be created 

Scenario Family Planning information
Given I am on the Entry page
When I click on the Family Planning Form 
And I fill in the fields of the Family Planning Form
Then the information should be stored in the family's record 

Scenario Child Health information
Given I am on the Entry page
When I click on the Child Health Form 
And I fill in the fields of the Child Health Form
Then the information should be stored in the family's record

Scenario Maternal Health information
Given I am on the Entry page
When I click on the Maternal Health Form 
And I fill in the fields of the Maternal Health Form
Then the information should be stored in the family's record 

Scenario Treatment record information
Given I am on the Entry page
When I click on the Treatment record Form 
And I fill in the fields of the Treatment record Form
Then the information should be stored in the family's record 