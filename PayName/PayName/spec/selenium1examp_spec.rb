

require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get "http://google.com"
puts "Page title is Google"
element =driver.find_element(:id ,"lst-ib")
element.send_keys "Cheese"
element.submit
puts "page title is googlesearch"
wait = Selenium::WebDriver::Wait.new(:timeout => 20)
wait.until {driver.title.downcase.start_with? "cheese"}
puts "page title is seleniumtest2 "
driver.quit
