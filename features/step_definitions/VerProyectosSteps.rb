Given('Im located in the login page of start americas together') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/login'
end

When('I click Proyectos') do
  click_on("Proyectos")
end

Then('I should see the following 4 projects') do |table|
    data = table.hashes
    xpathBase = '/html/body/div/div/div[2]'
    xpathBase = find(:xpath, xpathBase)
    pCount = 1
    divCount = 1

    data.each do |row|
        row.each do |key, value|
            expect(xpathBase.find(:xpath,  "./div[#{divCount}]/div[2]/p[#{pCount}]").text).to have_content(value)
            pCount += 1
        end 
        pCount = 1
        divCount += 1
    end
end