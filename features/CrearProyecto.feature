Feature: Register new users
As an user who has the leader role
I want to register a new project
In order to start a new project

@testCrearProyecto
Scenario: Create a new project
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "lider@gmail.com" and the password space with "123456"
    And I click on the "Iniciar Sesión" button
    And I click on "Proyectos" tab
    When I click on "Crear proyecto" tab
	And I fill the items with the following
    | titulo                | prueba | 
    |  descripcion          | descripcion generica  |
    |  objetivo             | objetivo del proyecto generico  |	  
    |  lider                | Lider del Proyecto generico  |
    And I click on "Crear" tab
    Then I should see my project on the list of projects with the following information
    | titulo                | prueba | 
    |  objetivo             | objetivo del proyecto generico   |
    |  descripcion          | descripcion generica  |	  
    |  lider                | Lider del Proyecto generico  |


@testCrearProyectoCamposVacios
Scenario: Create a project with empty fields
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "lider@gmail.com" and the password space with "123456"
    And I click on the "Iniciar Sesión" button
    And I click on "Proyectos" tab
    When I click on "Crear proyecto" tab
    And I click on "Crear" tab
    Then I should see a warning on every field with the following
    |  titulo               | requerido | 
    |  objetivo             | requerido  |
    |  descripcion          | requerido |	  
    |  lider                | requerido  |    
