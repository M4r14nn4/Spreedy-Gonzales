Feature: reader submits a document

  The reader submits a document. 
  Spreedy Gonzales checks if a file exists and if its readable

  Scenario Outline: submit document
    Given I am starting a spreeding-session
    When I submit <file>
    Then I should get a response: <message> 

  Scenarios:
    |        file           |               message											     |
    | i_dont_exist.txt      | "Sorry, unable to find the required document"  |
    | exists_readable.txt   | "Initializing spreeding"                       | 