Feature: reader starts spreeding session	
	
	As a reader 
	I want to start a spreeding session
	So I can speed-read the loaded text
	
	Scenario: start spreeding session
		Given I am not yet spreeding
		When I start a new spreeding session
		Then the spreeding session should say: "Let's spreed it up with Spreedy Gonzales!"
		And the spreeding session should say: "Enter the the path where I can reach the file you'd like to spreed:"