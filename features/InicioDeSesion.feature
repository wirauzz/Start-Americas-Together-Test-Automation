Feature: Login of User
In order to use the app Start Americas together
As one of the following roles (Lider, Voluntario and Core Team)
I want to login to the app

@testLogins
Scenario: Login as a <userType>        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "<email>" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "<firstName>" as my name "<lastName>" as my last name
    And "<userType>" as my role

Examples:
| userType 	 | email  	 			| firstName 	| lastName |
| lider 	 | lider@gmail.com 		| 	Pepe		| Peponcio |
| voluntario | voluntario@gmail.com |	a	 	| |
| core team	 | coreteam@gmail.com 	|	Core	 	| Team|

@testWrongPassword
Scenario: Failed login: wrong password       
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "coreteam@gmail.com" and the password with "1234567"
	And I click the button INICAR SESION
	Then I should see a notification that says "correo o contraseña invalidos"


@testEmptyFields
Scenario: Failed login: empty fields     
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I click the button INICAR SESION
	Then I should see the email field with "Campo requerido"
	And The password field with "Campo requerido"



  