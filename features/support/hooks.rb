
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before '@setEnviromentForToggleBarTest' do
  page.driver.browser.manage.window.maximize
  visit 'https://testing-start.web.app/'
  fill_in 'email', with: "voluntario@gmail.com"
  fill_in 'password', with: "123456"
  click_on("Perfil")
  if (find(:xpath, "/html/body/div/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").text()).to eq("Estoy disponible") 
    find(:xpath, "/html/body/div/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[1]/span[1]/span[1]").click()
  end
end


After '@testCrearProyecto' do
  
end
