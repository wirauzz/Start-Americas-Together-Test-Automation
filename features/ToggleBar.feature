Feature: availability toggle bar
    As a user of Start Americas Together
    I want to change my availability status on Start Americas Together
    In order to let other user know my availability

    Background: login as Voluntario user
        Given I am located in the home page of Start americas together
        And I click on the "Login" button
        And I fill the email space with "voluntario@gmail.com" and the password space with "123456"
        And I click on the "Iniciar Sesión" button


    Scenario: Change availability from "No disponible" to "Estoy disponible"
        Given I click on "Perfil" tab
        And if availability label shows "No disponible"
        When I click on the availability togglebar
        Then availability label shows "Estoy disponible"


    Scenario: Change availability from "Estoy disponible" to "No disponible"
        Given I click on "Perfil" tab
        And if availability label shows "Estoy disponible"
        When I click on the availability togglebar
        Then availability label shows "No disponible"
