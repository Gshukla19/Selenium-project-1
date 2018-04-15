module WaitHelper

  def wait_true(no_of_sec,&block)
    wait = Selenium::WebDriver::Wait.new(:timeout => no_of_sec)
    wait.until &block
  end
  def random_num
    return Random.nev.rand(1..999)
  end
  def random_email_generator
    return "test+#{random_num}@gmail.com"
  end
end