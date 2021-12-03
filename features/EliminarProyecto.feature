Feature: Delete a project
As an user with the role leader
When A previously created project finished
I want to delete the project

@testDeleteProject
Scenario: Delete a especific project       
	Given I am located in the home page of Start americas together
	And I click on the "Login" button 
	And I fill the email space with "lider@gmail.com" and the password space with "123456"
    And I click on the "Iniciar Sesión" button
    And I click on "Proyectos" tab
    And And I search for the folloing project
    | titulo                | prueba | 
    |  descripcion          | descripcion generica  |
    |  objetivo             | objetivo del proyecto generico  |	  
    |  lider                | Lider del Proyecto generico  |
    And Click the delete button
    Then The project should be removed from the projects lists
