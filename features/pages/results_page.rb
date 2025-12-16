require_relative 'base_page'

class ResultsPage < BasePage

  def filter_new
    new = find_and_scroll(:xpath, "//span[text()='Nuevo']")
    new.click
  end

  def filter_location
    location = find_and_scroll(:xpath, "//span[contains(text(),'Local')]")
    location.click
  end

  def order_by_price
    sleep 1
    desp = find(:css, '.andes-dropdown__trigger')
    sleep 1
    desp.click
    sleep 1
    higher_price = find(:xpath, "//span[text()='Mayor precio']")
    higher_price.click
  end

  def get_products
    ind = 0
    items = find_all(:css, 'li.ui-search-layout__item').first(5)
    raise 'No se encontraron productos' if items.empty?

    puts "Productos encontrados:"
    items.each do |item|
      title = item.find_element(:css, 'a.poly-component__title')
      price = item.find_element(:css, '.poly-price__current .andes-money-amount__fraction')
      next if title.nil? || price.nil?

      puts "#{ind += 1}- #{title.text} - $#{price.text}"
    end
  end

end
