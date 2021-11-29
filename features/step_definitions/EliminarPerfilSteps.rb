

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
    find(:xpath, '/html/body/div/div/div/div/div[2]/div[1]/div/div[1]/div/span/div/div[1]/div[2]/div/div[2]/button[2]').click
    sleep 2
  end
  
  Then('a message that says {string} appears on screen') do |errorMessage|
    page.driver.browser.switch_to.alert.errorMessage
  end