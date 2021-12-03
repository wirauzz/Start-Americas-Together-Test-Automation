Feature: Edit profile as Coreteam
	As a user with coreteam rol in Start Americas Together
	I want to edit my data
	In order to update my data

	Background: login as coreteam user
		Given I am located in the home page of Start americas together
		And I click on the "Login" button
		And I fill the email space with "coreteam@gmail.com" and the password space with "123456"
		And I click on the "Iniciar Sesión" button


	Scenario: Edit all fields correctly (happy path)
		Given I click on "Perfil" tab
		And I click on the "Editar Perfil" button
		And I fill all the edit profile fields as shown below
			| Nombre      | Marcelo |
			| Apellido | Alvarez Quiroga |
			| Fecha de nacimiento | 02\08\1990 |
			| Ocupacion | Universidad |
			| Profesion u oficio | Ingeniero de sistemas |
			| Mis intereses | Medio ambiente |
			| Mis cualidades |  Liderazgo |
			| Pais de residencia | Peru |
			| Ciudad de residencia | Lima |
			| Teléfono | 87456321 |
			| Genero | Masculino |
			| Nombre de contacto de emergencia | Pedro Aredondo Gutierrez |
			| Relación con contacto de emergencia | Papa |
			| Número de contacto de emergencia | 45236658 |
			| Mi pequeña descripción |  Angus & Julia Stone - Love Song (Lyric Video) |
		When I click on the "Guardar" button
		Then a message that says "actualizado correctamente" appears on screen
		And my personal information was updated