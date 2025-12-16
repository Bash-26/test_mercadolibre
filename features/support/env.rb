require 'selenium-webdriver'
require 'rspec'
require 'report_builder'

$driver = Selenium::WebDriver.for :chrome
$driver.manage.window.maximize
$driver.manage.timeouts.implicit_wait = 10
