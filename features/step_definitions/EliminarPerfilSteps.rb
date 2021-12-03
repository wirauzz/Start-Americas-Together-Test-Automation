

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
    click_on(string)
    sleep 3
  end
  
  #confirm deletion
  When('I accept the confirmation message') do
    page.driver.browser.switch_to.alert.accept
  end

  Then('a message that says {string} appears on screen') do |deleteNotification|
    page.driver.browser.switch_to.alert.text.should eq(deleteNotification)
    page.driver.browser.switch_to.alert.accept
    sleep 1
  end

  #cancel deletion
  When('I reject the confirmation message') do
    page.driver.browser.switch_to.alert.dismiss
  end
  
  Then('I can still see my profile on screen') do
    expect(page).to have_content("voluntario")
  end