#!/usr/bin/env python

from selenium import webdriver

capabilities = {
    "platformName": "iOS",
    "safari:useSimulator": True,
    "safari:deviceType": "iPad",
}
driver = webdriver.Safari(desired_capabilities=capabilities)
driver.get('https://www.apple.com/safari/')
driver.get_screenshot_as_file('screenshot.png')
driver.quit()
