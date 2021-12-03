Feature: Delete profile as voluntario
As a user with voluntario rol in Start Americas Together
I want to delete my account
In order to stop being part of Start Americas Together



Scenario: Delete self account
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "voluntario@gmail.com" and the password space with "123456"
	And I click on the "Iniciar Sesión" button
    And I click on "Perfil" tab
    When I click "Eliminar perfil" button
    And I accept the confirmation message
	Then a message that says "Se elimino su perfil de usuario" appears on screen

Scenario: cancel self account deletion attempt
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "voluntario@gmail.com" and the password space with "123456"
	And I click on the "Iniciar Sesión" button
    And I click on "Perfil" tab
    When I click "Eliminar perfil" button
    And I reject the confirmation message
	Then I can still see my profile on screen
