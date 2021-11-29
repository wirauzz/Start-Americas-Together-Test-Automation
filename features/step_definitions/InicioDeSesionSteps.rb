Given('I am located in the home page of start americas together') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
  
  Given('I click the {string} button') do |string|
    click_on("Login")
    sleep 1
  end
  
  When('I fill the email with {string} and the password with {string}') do |string, string2|
    fill_in 'email', with: string
    fill_in 'password', with: string2
  end
  
  When('I click the button INICAR SESION') do
    click_on('Iniciar Sesión')
    sleep 1
  end
  

  Then('if I click on Profile i should see {string} as my name {string} as my last name') do |string, string2|
    click_on('Perfil')
    sleep 1
    expect(page).to have_selector('h6', text: string % string2)
  end
  
  Then('{string} as my role') do |string|
    expect(page).to have_css('.MuiChip-label', text: string)
  end
  