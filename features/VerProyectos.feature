Feature: View all the projects
In order take part on a project
As a person who is willing to participate
I want to view all available projects


@testViewProjects
Scenario: View Projects
Given Im located in the login page of start americas together
And I fill the email with "voluntario@gmail.com" and the password with "123456"
And I click the button INICAR SESION
When I click Proyectos
Then I should see the following 4 projects
    |pName   | objective | description  | leader       |
    |zxczxc  | zxczxc    | zxczxc      | zxczxczxczxc |
    |a       | a         | a            | a            |
    |titulo1 | objetivo1 | descripcion1 | paul0123     |
    |TEST    | OBJETIVO  | DESCRIPCION  | LIDER        |