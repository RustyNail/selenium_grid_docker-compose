require "selenium-webdriver"

driver = Selenium::WebDriver.for :remote,
                                 url: "http://hub:4444/wd/hub",
                                 desired_capabilities: :firefox

driver.navigate.to "http://google.com"
driver.save_screenshot "screenshot.png"

driver.quit
