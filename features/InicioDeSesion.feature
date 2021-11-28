Feature: Login of User
In order to use the app Start Americas together
As one of the following roles (Lider, Voluntario and Core Team)
I want to login to the app

Scenario: Login as a leader        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "lider@gmail.com" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "Pepe" as my name "Peponcio" as my last name
    And "lider" as my role


  