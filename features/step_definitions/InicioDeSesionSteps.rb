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
  
  Then('I should see a notification that says {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then('I should see the email field with {string}') do |string|
    sleep(1)
    expect(page).to have_selector('#email-helper-text', text: string)
  end
  
  Then('The password field with {string}') do |string|
    expect(page).to have_selector('#password-helper-text', text: string)
  end