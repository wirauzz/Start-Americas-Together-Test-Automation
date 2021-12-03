Feature: Create new event
As a user with lider rol in Start Americas Together
I want to create event
In order to create an event to be able to participate in the


Scenario: Create event      
	Given I am located at the home page of Start Americas Together
	And I click on the "Login" button
	And I fill the Email space with "<email>" and the Pass space with "<password>"
	And I click on the "Iniciar Sesión" button
    And I click on the "Eventos" tab
    And I click "Crear Evento" button
    When I enter the fields as show below
	|Nombre del evento: 	        | Evento Prueba Lider                        |
    |Descripcion del evento: 	    | Descripcion evento prueba Lider            |
    |Modalidad del evento: 	        | Presencial                                 |
    |Lugar del evento: 	            | CBBA 2                                     |
    |Fecha del evento: 	            | 03\12\2021                                 |
    Then I click on the button "Registrar Evento"
    Examples:
    | email                 | password | 
    |  lider@gmail.com      |  123456  |	  
