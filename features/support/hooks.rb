Before do
  @driver = $driver
end

After do |scenario|
  if scenario.failed?
    screenshot_name = "reports/screenshots/#{scenario.name}.png"
    @driver.save_screenshot(screenshot_name)
  end
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'reports'
    config.report_path = 'reports/cucumber_report'
    config.report_types = [:html]
    config.report_title = 'MercadoLibre Automation Report'
  end

  ReportBuilder.build_report
  $driver.quit
end
