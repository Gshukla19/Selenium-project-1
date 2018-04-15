require 'rspec'
require 'test/unit/assertions'
require 'test/unit'
include WaitHelper
include GenericHelper
include SignupHelper

describe 'My behaviour' do

  it 'should do predesboard check' do
    signup (random_email_generator)#"1qa@wsx",95035)

    verify_desboard_layout
    verify_desboard_containts

     #dive#pre-dashboard-content h1

    #true.should == false
  end
end

def verify_desboard_layout
  #set_webview
  wait_true(15){@driver.find_element(:id, 'btn-take-tour').displayed?}
  expect(@driver.find_element(:css, 'h1.ng-binding').text).to eq "Pay all your bills with cash at nearly 17,000 convenient locations. Most payments post next work day."
  expect(@driver.find_element(:id,'btn-add-bill').displayed?).to be_truthy
  expect(@driver.find_element(:id,'btn-take-tour').displayed?).to be_truthy
end
 #it 'should check elements on dasboard' do
   #verify_desboard_containts

def verify_desboard_containts

     expect(@driver.find_element(:id,'off-canvas-menu-landing').displayed?).to be_truthy
     expect(@driver.find_element(:id,'off-canvas-menu-open-order-list').displayed?).to be_truthy
     expect(@driver.find_element(:id,'off-canvas-menu-history').displayed?).to be_truthy
     expect(@driver.find_element(:id,'off-canvas-menu-locations-list').displayed?).to be_truthy
     expect(@driver.find_element(:id,'off-canvas-menu-settings').displayed?).to be_truthy

end


