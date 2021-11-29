Feature: Login of User
In order to use the app Start Americas together
As one of the following roles (Lider, Voluntario and Core Team)
I want to login to the app

@testLider
Scenario: Login as a leader        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "lider@gmail.com" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "Pepe" as my name "Peponcio" as my last name
    And "lider" as my role

@testVoluntario
Scenario: Login as a volunteer        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "voluntario@gmail.com" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "Roberto" as my name "Estropajo" as my last name
    And "voluntario" as my role

@testCoreTeam
Scenario: Login as a volunteer        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button 
	When I fill the email with "coreteam@gmail.com" and the password with "123456"
	And I click the button INICAR SESION
	Then if I click on Profile i should see "Core" as my name "Team" as my last name
    And "core team" as my role


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



  