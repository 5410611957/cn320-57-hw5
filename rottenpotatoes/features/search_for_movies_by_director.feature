#Thotsawat Fukiatisut  5410611957
#Supanut Supamitgijja  5410610728


Feature: search for movies by director

  As a movie fan
  So that I can find movies with my favorite director
  I want to include and serach on director information in movies I enter

Background: movies have been added to database

  Given the following movies exist:



  | title                   | rating | release_date | director |
  | Aladdin                 | G      | 25-Nov-1992  |   AAA    |
  | The Terminator          | R      | 26-Oct-1984  |          |
  | When Harry Met Sally    | R      | 21-Jul-1989  |   AAA    |
  | The Help                | PG-13  | 10-Aug-2011  |          |
  | Chocolat                | PG-13  | 5-Jan-2001   |          |
  | Amelie                  | R      | 25-Apr-2001  |          |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |   AAA    |
  | The Incredibles         | PG     | 5-Nov-2004   |          |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |          |
  | Chicken Run             | G      | 21-Jun-2000  |          |  
   
  
  
Scenario: add director to existing movie  #first scenario
  When I go to the edit page for "The Terminator"
  And  I fill in "Director" with "James Cameron"
  And  I press "Update Movie Info"
  Then the director of "Terminator" should be "James Cameron"

Scenario: find movie with same director #2nd scenario
  Given I am on the show page for "Aladdin"
  When  I follow "Find Movies With Same Director"
  Then  I should be on the same_director page for "Aladdin"
  And   I should see "When Harry Met Sally"
  And   I should see "2001: A Space Odyssey"

Scenario: can't find same movies if we don't know director (sad path)
  Given I am on the details page for "The Help"
  Then  I should not see "some_directo_name"   
  When  I follow "Find Movies With Same Director"
  Then  I should be on the home page
  And   I should see "'The Help' has no director edited"