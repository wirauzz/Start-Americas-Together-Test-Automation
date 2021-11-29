Feature: Delete profile
As a user with an account in Start Americas Together
I want to delete my account
In order to stop being part of Start Americas Together



Scenario: Delete self account as a leader user
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "<email>" and the password space with "<password>"
	And I click on the "Iniciar Sesión" button
    And I click on "Perfil" tab
    When I click "ELIMINAR PERFIL" button
	Then a message that says "Se elimino su perfil de usuario" appears on screen
    Examples:
    | email                 | password | 
    |  voluntario@gmail.com |  123456  |
    |  lider@gmail.com      |  123456  |	  
    |  coreteam@gmail.com   |  123456  |
