Feature: See information regarding different diseases
As a DHO
So that I can track the prevalence of different diseases
I want to see the number of reported cases of different diseases

Scenario: see the number of cases of diseases
Given I am on the home page
When I click on trends
Then I should see the a table showing the number of each type of disease in my district
