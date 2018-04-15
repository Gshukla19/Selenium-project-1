require 'rspec'
require 'test/unit/assertions'
require 'test/unit'
include WaitHelper
include GenericHelper
include SignupHelper
include BillerOrderHelper

describe 'My behaviour' do




  it 'should click on add biller' do
    signup (random_email_generator)#"1qa@wsx",95035)
    add_bill_btn=wait_true(15) {
      element=@driver.find_element(:id, 'btn-add-bill')
      element if element.displayed?
    }
    add_bill_btn.click
    sleep(10)
    add_biller_order("GEICO")
    sleep(10)



    #true.should == false
  end
end