  Given('if availability label shows {string}') do |string|
    @shouldToggle=false
    if find(:xpath, "/html/body/div/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").text() == string
        @shouldToggle=true
    end
  end    
  When('I click on the availability togglebar') do
    puts @shouldToggle
    if @shouldToggle
        find(:xpath, "/html/body/div/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[1]/span[1]/span[1]").click()
    end
    sleep 2
  end
  
  Then('availability label shows {string}') do |string|
    expect(find(:xpath, "/html/body/div/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").text()).to eq(string)
  end
  
  