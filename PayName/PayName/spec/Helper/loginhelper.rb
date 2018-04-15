module  LoginHelper
  def navigate_to_login
    login_link=wait_true(10){
      element= @driver.find_element(:css, '.login-footer > a:nth-child(1)')
      element if element.displayed?
    }
    login_link.click
    end

 def login (email, pswd)
    #step 1
   wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
   @driver.find_element(:id, "input-email_or_phone").send_keys(email)

   #step 2
   wait_true(15){@driver.find_element(:id,"input-password").displayed?}
   @driver.find_element(:id, "input-password").send_keys(pswd)


  end



end