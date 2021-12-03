Then(/^I click "([^"]*)" button  in the event Transición de Estados Presencial/) do |string|
    find(:xpath, '/html/body/div/div/div[2]/div/div[3]/div/div[2]/div/button[1]').click
    sleep 1
  end