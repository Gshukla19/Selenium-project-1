module SignupHelper
 def signup (email,pswd="1qaz@wsx",zipcode=95035)

   #step 1
   wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
   @driver.find_element(:id, "input-email_or_phone").send_keys(email)

   #step 2
   wait_true(15){@driver.find_element(:id,"input-password").displayed?}
   @driver.find_element(:id, "input-password").send_keys(pswd)

   #step 3
   wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
   @driver.find_element(:id, "input-postalcode").send_keys(zipcode)

    #step 4
    @driver.find_element(:id, "button-sign-up").click

    sleep 10
  end

end