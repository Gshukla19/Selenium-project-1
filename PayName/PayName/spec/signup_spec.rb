require 'rspec'
include WaitHelper
describe 'signup: ' do

  it ' should allow users to signup' do
    #step 1
    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id, "input-email_or_phone").send_keys("test21@gmail.com")

    #step 2
    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id, "input-password").send_keys("1qaz@WSX")

    #step 3
    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id, "input-postalcode").send_keys("95035")

    #step 4
    @driver.find_element(:id, "button-sign-up").click

    sleep 10
  end

  it "Should throw error on entering wrong email format" do

    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id, "input-email_or_phone").send_keys("21.cm")

    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id, "input-password").send_keys("1qaz@WSX")

    wait_true(15){@driver.find_element(:id,"error-email_or_phone").displayed?}
    @driver.find_element(:id, "error-email_or_phone").text.should eq"contact developer"





    #puts "enter correct email address "


    sleep 10

  end

  it "Should throw error on entering wrong zip code" do

    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id, "input-email_or_phone").send_keys("test21@gmail.com")

    #step 2
    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id, "input-password").send_keys("1qaz@WSX")

    #step 3
    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id, "input-postalcode").send_keys("9535")

    #step 5
    @driver.find_element(:id, "button-sign-up").click


    #step 4

    wait_true(15){@driver.find_element(:id,"error-postalcode").displayed?}
    @driver.find_element(:id, "error-postalcode").text.should eq"contact developer 2"


    sleep 10

  end
end