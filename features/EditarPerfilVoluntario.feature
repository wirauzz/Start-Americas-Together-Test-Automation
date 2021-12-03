Feature: Edit profile as Voluntario
	As a user with voluntario rol in Start Americas Together
	I want to edit my data
	In order to update my data

	
	Background: login as voluntario user
		Given I am located in the home page of Start americas together
		And I click on the "Login" button
		And I fill the email space with "voluntario@gmail.com" and the password space with "123456"
		And I click on the "Iniciar Sesión" button

	Scenario: Edit all fields correctly (happy path)
		Given I click on "Perfil" tab
		And I click on the "Editar Perfil" button
		And I fill all the edit profile fields as shown below
			| Nombre      | Martha |
			| Apellido | Carvajal Nuñez |
			| Fecha de nacimiento | 12\12\1995 |
			| Ocupacion | Trabajando |
			| Profesion u oficio | Abogado |
			| Mis intereses | Empoderamiento |
			| Mis cualidades |  Creatividad |
			| Pais de residencia | Bolivia |
			| Ciudad de residencia | Cochabamba |
			| Teléfono | 12345678 |
			| Genero | Femenino |
			| Nombre de contacto de emergencia | Jimena Veizaga Ramirez |
			| Relación con contacto de emergencia | Hermana |
			| Número de contacto de emergencia | 74125333 |
			| Mi pequeña descripción |  Del claro - Fade AwayJW Francis - Good Time (11:56) |
		When I click on the "Guardar" button
		Then a message that says "actualizado correctamente" appears on screen
		And my personal information was updated