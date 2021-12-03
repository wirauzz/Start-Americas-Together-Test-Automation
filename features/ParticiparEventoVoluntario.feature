Feature: Create new event
As a user with voluntario rol in Start Americas Together
I want to participate in an event
In order to be participatory on the page


Scenario: Create event      
	Given I am located at the home page of Start Americas Together
	And I click on the "Login" button
	And I fill the Email space with "<email>" and the Pass space with "<password>"
	And I click on the "Iniciar Sesión" button
    And I click on the "Eventos" tab
    Then I click "Participar" button in the event Transición de Estados Presencial
    Examples:
    | email                      | password | 
    |  voluntario@gmail.com      |  123456  |	 