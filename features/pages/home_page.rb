require_relative 'base_page'

class HomePage < BasePage
  URL = 'https://www.mercadolibre.com'

  def open_url
    @driver.get(URL)
  end

  def select_mx
    mx = find(:id, 'MX')
    mx.click
  end

  def search_product(product)
    box = find(:name, 'as_word')
    box.send_keys(product)
    box.submit
  end
end
