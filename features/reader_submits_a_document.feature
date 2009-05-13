Feature: reader submits a document

  The reader submits a document. 
  Spreedy Gonzales checks if a file exists
  And if its readable

  Scenario Outline: submit document
    Given the file is <file>
    When I submit <file>
    Then the spreeding session should say: <quotation> 

  Scenarios:
    |        file           |               quotation												 |
    | i_dont_exist.txt      | "Sorry, unable to find the required document"  |
    | exists_unreadable.jpg | "Sorry, the file you submitted is not readable"|
    | exists_readable.txt   | "Initializing spreeding"                       | 