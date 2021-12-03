
When('I click on {string} button') do |string|
  click_on(string)
end
  

When('I fill the items with the following') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
      when "titulo"
        fill_in 'Ingrese el titulo', :with => value	 
      when "descripcion"
        fill_in 'Ingrese una descripcion', :with => value
    when "objetivo"
        fill_in 'Ingrese el objetivo', :with => value	 	 
      when "lider"
        fill_in 'Escriba el nombre del lider', :with => value	 
    end 
  end
end


Then('I should see my project on the list of projects with the following information') do |table|
  data = table.rows_hash
  divs = page.all(:css ,'.MuiBox-root.content-container')
  count = 0
  pCount = 0
  while count < divs.length() && pCount != 4 do
    pCount = 0
    data.each_pair do |key, value|
      text_field = divs[count].find(:xpath, "/html/body/div/div/div[2]/div[#{count+1}]/div[2]/p[#{pCount+1}]").text
      if(text_field =~ /#{value}(.*)/) then
        expect(divs[count].find(:xpath, "/html/body/div/div/div[2]/div[#{count+1}]/div[2]/p[#{pCount+1}]").text).to have_content(value)
        #puts "#{text_field} coincide"
        pCount += 1
      # else
      #   puts "#{text_field} no coincide, pasando a siguiente proyecto"
      end
    end
    count += 1
  end
  if(pCount != 4)
    raise "No se encontro el proyecto creado"
  end
end


Then('I should see a warning on every field with the following') do |table|
  page.driver.browser.switch_to.alert.accept

  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "titulo"
      expect(page.find(:xpath, '/html/body/div/div/div[2]/form/div[2]/div[1]')).to have_css(".#{value}") 
    when "descripcion"
      expect(page.find(:xpath, '/html/body/div/div/div[2]/form/div[2]/div[2]')).to have_css(".#{value}")
    when "objetivo"
      expect(page.find(:xpath, '/html/body/div/div/div[2]/form/div[2]/div[3]')).to have_css(".#{value}")	 	 
    when "lider"
      expect(page.find(:xpath, '/html/body/div/div/div[2]/form/div[2]/div[4]')).to have_css(".#{value}")
    end 
  end
end