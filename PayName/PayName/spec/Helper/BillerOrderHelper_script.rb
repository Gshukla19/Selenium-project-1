module BillerOrderHelper

  def add_biller_order(biller_name)
    sleep 5
    #wait_true(10) {@driver.find_element(:css, "div.list-item-title").displayed?}
    @driver.find_elements(:css, "div.list-item-title").each do |list_item|
      puts list_item.text
      if list_item.text == biller_name
        list_item.click
        break
      end
      sleep 5

      wait_true(15){@driver.find_element(:css, "button.primary ").displayed?}
      @driver.find_element(:css, "button.primary ").click
      sleep 5

    end
  end

end