Given('And I search for the folloing project') do |table|
    data = table.rows_hash
    divs = page.all(:css ,'.MuiBox-root.content-container')
    count = 0
    pCount = 0
    while count < divs.length() && pCount != 4 do
      pCount = 0
      data.each_pair do |key, value|
        text_field = divs[count].find(:xpath, "/html/body/div/div/div[2]/div[#{count+1}]/div[2]/p[#{pCount+1}]").text
        if(text_field =~ /#{value}(.*)/) then
          pCount += 1
        end
      end
      count += 1
    end
    if(pCount == 4)
        @targetProject = divs[count]
    else    
      raise "No se encontro el proyecto objetivo"
    end
  end
  
  Given('Click the delete button') do
    click_on(@targetProject.find('Eliminar'))
  end
  
  Then('The project should be removed from the projects lists') do
    data = table.rows_hash
    divs = page.all(:css ,'.MuiBox-root.content-container')
    count = 0
    pCount = 0
    while count < divs.length() && pCount != 4 do
      pCount = 0
      data.each_pair do |key, value|
        text_field = divs[count].find(:xpath, "/html/body/div/div/div[2]/div[#{count+1}]/div[2]/p[#{pCount+1}]").text
        if(text_field =~ /#{value}(.*)/) then
          pCount += 1
        end
      end
      count += 1
    end
    if(pCount == 4)
        raise "No se encontro el proyecto objetivo"
    else    
  end