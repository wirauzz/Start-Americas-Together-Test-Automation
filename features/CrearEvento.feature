Feature: Create new event
In order to use the app Start Americas together
As one of the following roles (Lider and Core Team)
I want to create event to the page


Scenario: Create event      
	Given I am located in the home page of start americas together
	And I click the "Login" button 
	And I fill the email space with "<email>" and the password space with "<password>"
	And I click on the "Iniciar Sesión" button
    And I click on "Eventos" tab
    And I click "Crear Evento" button
    And I fill the name of event field with "Evento Prueba 1"
    And I fill the description of event field with "Descripcion evento prueba"
    And I fill the place field with "CBBA"
    Then I click the button "Registrar Evento"
    Examples:
    | email                 | password | 
    |  lider@gmail.com      |  123456  |	  
    |  coreteam@gmail.com   |  123456  |
