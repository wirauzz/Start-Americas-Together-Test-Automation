Given('I am located in the home page of Start americas together') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
  
  Given('I click on the {string} button') do |string|
    click_on(string)
    sleep 2
  end
  
  Given('I fill the email space with {string} and the password space with {string}') do |string, string2|
    fill_in 'email', with: string
    fill_in 'password', with: string2
  end
  
  Given('I click on {string} tab') do |string|
    click_on(string)
    sleep 2
  end
  
  When('I click {string} button') do |string|
    find(:xpath, '/html/body/div/div/div[1]/div[2]/a[1]').click
    sleep 2
  end
  
  When('I fill the name of event field with {string}') do |string|
    fill_in 'nombre_evento', with: string
  end
  
  When('I fill the description of event field with {string}') do |string|
    fill_in 'descripcion_evento', with: string
  end
  
#   When('I choose the option {string} in box modality') do |string|
#     find(:xpath, '/html/body/div/div/form/div[3]/select/option[2]').click
#     sleep 1
#   end

  When('I fill the place field with {string}') do |string|
    fill_in 'lugar_evento', with: string
  end

  Then('I click the button {string}') do |string|
    find(:xpath, '/html/body/div/div/form/div[4]/button[1]').click
    sleep 2
  end
  
#   When('And I choose todays date by clicking on the {string} option in the "Fecha" box ') do |string|
#     fill_in 'lugar_evento', with: string
#   end
  
#   Then('a message that says {string} appears on screen') do |errorMessage|
#     page.driver.browser.switch_to.alert.errorMessage
#   end