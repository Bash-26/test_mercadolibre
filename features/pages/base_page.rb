class BasePage
  DEFAULT_TIMEOUT = 15

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(timeout: DEFAULT_TIMEOUT)
  end

  def find(by, value)
    @wait.until { @driver.find_element(by, value) }
  rescue Selenium::WebDriver::Error::TimeoutError
    raise "No se encontró el elemento: #{by} => #{value}"
  end

  def find_all(by, value)
    @wait.until { @driver.find_elements(by, value) }
  rescue Selenium::WebDriver::Error::TimeoutError
    raise "No se encontraron elementos: #{by} => #{value}"
  end


  def scroll_to(element)
    @driver.execute_script(
      "arguments[0].scrollIntoView({behavior:'smooth', block:'center'});",
      element
    )
    sleep 0.5
  end

  def find_and_scroll(by, value)
    element = find(by, value)
    scroll_to(element)
    element
  end
end
