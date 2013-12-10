Feature: display list of verses sorted by category
As an user
So that I can view only a specific range of Bible verses
I want to be able to sort Bible verses by Category

Background: verses have been added to database
Given the following verses exist:
| title | rating | release_date|
| 2 Corinthians 5:17  | Christ the Center| Therefore, if anyone is in Christ, he has become a new creaton. The old has passed away; behold, the new has come. |
| Romans 3:23 | Proclaim Christ | for all have sinned and fallen short of the glory of God |
|Matthew 6:33 | Being Christ's Disciple | But seek first the kingdom of God and his righteousness, and all these things will be added to you. |
| John 13: 34-35  | Grow in Christlikeness| A new commandment I give you, that you love one another: just as I hve loved you, you are to love one another. By this, all people will know you are my disciples, if you have love for one another. |

And I am on the RottenPotatoes home page
Scenario: restrict to verses with 'Christ the Center' or 'Proclaim Christ' ratings
# enter step(s) to check the 'Christ the Center' and 'Proclaim Christ' checkboxes
# enter step(s) to uncheck all other checkboxes
# enter step to "submit" the search form on the homepage
# enter step(s) to ensure that Christ the Center and Proclaim Christ verses are visible
# enter step(s) to ensure that other verses are not visible
When I uncheck the following ratings: Being Christ's Disciple, Grow in Christlikeness
And I check the following ratings: Christ the Center, Proclaim Christ
And I press "Refresh"
Then I should see "2 Corinthians 5:17"
And I should see "Romans 3:23"
But I should not see "Matthew 6:33"
And I should not see "John 13: 34-35"


Scenario: all ratings selected
# see assignment
When I check the following ratings: Christ the Center, Proclaim Christ, Being Christ's Disciple, Grow in Christlikeness
Then I should see all verses
