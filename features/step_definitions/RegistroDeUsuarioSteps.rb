
Given('I click the button CREAR CUENTA NUEVA') do
    click_on('Crear cuenta nueva')
  end
  
  When('I fill the email field with {string}') do |string|
    fill_in 'email', with: string
  end
  
  When('I fill the name field with {string}') do |string|
    fill_in 'username', with: string
  end
  
  When('I fill the lastname field with {string}') do |string|
    fill_in 'lastname', with: string
  end
  
  When('I fill the cellphone field with {string}') do |string|
    fill_in 'phone', with: string
  end
  
  When('I fill the password field with {string}') do |string|
    fill_in 'password', with: string
  end
  
  When('I fill the confirm password field with {string}') do |string|
    fill_in 'confirmPassword', with: string
  end
  
  When('I click the CREAR CUENTA START button') do
    click_on('Crear cuenta start')
  end
  
  Then('when I loggin to my account and go to my Profile I should see {string} as my name {string} as my last name') do |string, string2|
    fill_in 'email', with: "test1@gmail.com"
    fill_in 'password', with: "123456a"
    click_on('Iniciar Sesión')
    sleep 1
    click_on('Perfil')
    expect(page).to have_selector('h6', text: string % string2)
  end


  Then('all the fields should show me a warning') do
    xpathBase = '/html/body/div/div/div/div[2]/div[2]/form'
    xpathBase = find(:xpath, xpathBase)

    xpathEmail  = "./div[1]/p"
    xpathUsername  = "./div[2]/div[1]/p"
    xpathLastName  = "./div[2]/div[2]/p"
    xpathCellphone  = "./div[3]/p"
    xpathPassword  = "./div[4]/p"
    xpathConfirmPassword  = "./div[5]/p"
    begin
      expect(xpathBase.find(:xpath, xpathEmail)).to have_content("No valido")
      expect(xpathBase.find(:xpath, xpathUsername)).to have_content("Campo requerido")
      expect(xpathBase.find(:xpath, xpathLastName)).to have_content("Campo requerido")
      expect(xpathBase.find(:xpath, xpathCellphone)).to have_content("Campo requerido")
      expect(xpathBase.find(:xpath, xpathPassword)).to have_content("Debe contener 6 caracteres y un número")
      expect(xpathBase.find(:xpath, xpathConfirmPassword)).to have_content("Contraseñas no coinciden")
    rescue => exception
      raise "One of the field isn't showing the warning"
    end
    
  end