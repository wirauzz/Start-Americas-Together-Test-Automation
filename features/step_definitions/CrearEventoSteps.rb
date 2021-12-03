Given(/^I am located at the home page of Start Americas Together/) do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
  
  Given('I click the {string} button')do |string|
    click_on(string)
    sleep 2
  end
  
  Given(/^I fill the Email space with "([^"]*)" and the Pass space with "([^"]*)"/) do |string, string2|
    fill_in 'email', with: string
    fill_in 'password', with: string2
  end
  
  Given(/^I click on the "([^"]*)" tab/) do |string|
    click_on(string)
    sleep 2
  end
  
  When(/^I click "([^"]*)" button on eventos/) do |string|
    find(:xpath, '/html/body/div/div/div[1]/div[2]/a[1]').click
    sleep 2
  end
  
  When(/^I enter the fields as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "Nombre del evento:"
      fill_in 'nombre_evento', :with => value
      when "Descripcion del evento:"
      fill_in 'descripcion_evento', :with => value
      when "Modalidad"
      select value, :from => "modalidad_evento"
      when "Lugar del evento:"
      fill_in 'lugar_evento', :with => value
      when "Fecha del evento:"
      fill_in 'fecha_evento', :with => value
      end
    end
  end

  Then(/^I click on the button "([^"]*)"/) do |string|
    find(:xpath, '/html/body/div/div/form/div[4]/button[1]').click
    sleep 2
  end