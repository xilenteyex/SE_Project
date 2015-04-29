Feature:
As a LHW
So that I have quick access to all information
I want generate a list of children under 5 in my area with their vaccination details


Scenario:

Given the following entries exist
| name | date_of_birth | nurse_name |
| Ahmed | 0001-01-01 | Abeera |
| Irfan | 0001-01-01 | Abeera |

When I am on the child info page
Then I should see "Ahmed" and "Irfan"
