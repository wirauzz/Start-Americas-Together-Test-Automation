Feature: Edit profile as lider
	As a user with lider rol in Start Americas Together
	I want to edit my data
	In order to update my data

	Background: login as lider user
		Given I am located in the home page of Start americas together
		And I click on the "Login" button
		And I fill the email space with "lider@gmail.com" and the password space with "123456"
		And I click on the "Iniciar Sesión" button


	Scenario: Edit all fields correctly (happy path)
		Given I click on "Perfil" tab
		And I click on the "Editar Perfil" button
		And I fill all the edit profile fields as shown below
			| Nombre      | Armando |
			| Apellido | Paredes Casas |
			| Fecha de nacimiento | 01\07\2000 |
			| Ocupacion | Colegio |
			| Profesion u oficio | Ingeniero financiero |
			| Mis intereses | Trabajo social |
			| Mis cualidades |  Organizacion |
			| Pais de residencia | Argentina |
			| Ciudad de residencia | Buenos Aires |
			| Teléfono | 78532647 |
			| Genero | Otro |
			| Nombre de contacto de emergencia | Maria Aranibar Aguirre |
			| Relación con contacto de emergencia | Tia |
			| Número de contacto de emergencia | 78566214 |
			| Mi pequeña descripción | opyright (C) 2016 Microsoft Corporation. All rights reserved. |
		When I click on the "Guardar" button
		Then a message that says "actualizado correctamente" appears on screen
		And my personal information was updated