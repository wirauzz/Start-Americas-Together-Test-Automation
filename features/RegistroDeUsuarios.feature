Feature: Register new users
In order to use the app Start Americas together
As a person who is willing to be a volunteer
I want to register to the page



@testRegister
Scenario: Register a user        
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button on register
	And I click the button CREAR CUENTA NUEVA
	When I fill the email field with "test1@gmail.com"
    And I fill the name field with "Juan"
    And I fill the lastname field with "Perez"
    And I fill the cellphone field with "123456789"
    And I fill the password field with "123456a"
    And I fill the confirm password field with "123456a"
    And I click the CREAR CUENTA START button
    Then when I loggin to my account and go to my Profile I should see "Juan" as my name "Perez" as my last name

@testEmptyFields
Scenario: Empty Fields       
	Given I am located in the home page of start americas together
	And I click the "LOGIN" button on register
	And I click the button CREAR CUENTA NUEVA
    When I click the CREAR CUENTA START button
    Then all the fields should show me the folloing warnings

    |  email               | No valido | 
    |  username             | Campo requerido  |
    |  lastname          | Campo requerido |	  
    |  cellphone                | Campo requerido  |   
    |  password          | Debe contener 6 caracteres y un número |	  
    |  confirmPass                | Contraseñas no coinciden  |   
