require_relative '../pages/home_page'
require_relative '../pages/results_page'

Given('ingreso al sitio de Mercado Libre') do
  home = HomePage.new(@driver)
  home.open_url
end

Given('selecciono México como país') do
  home = HomePage.new(@driver)
  home.select_mx
end

When('busco {string}') do |product|
  home = HomePage.new(@driver)
  home.search_product(product)
end

When('filtro por condición Nuevo') do
  results = ResultsPage.new(@driver)
  results.filter_new
end

When('filtro por ubicación Local') do
  results = ResultsPage.new(@driver)
  results.filter_location
end

When('ordeno por mayor precio') do
  results = ResultsPage.new(@driver)
  results.order_by_price
end

Then('obtengo los primeros 5 productos') do
  results = ResultsPage.new(@driver)
  results.get_products
end
