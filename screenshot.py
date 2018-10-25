#!/usr/bin/env python

from selenium import webdriver

def set_content_size(driver, width, height):
    # This assumes that the size of the chrome doesn't change when the window
    # size changes, which isn't necessarily true, but seems to be true.
    window_size = driver.get_window_size()
    content_size = driver.execute_script('return { width: innerWidth, height: innerHeight }')
    chrome_width = window_size['width'] - content_size['width']
    chrome_height = window_size[u'height'] - content_size[u'height']
    driver.set_window_size(width + chrome_width, height + chrome_height)

driver = webdriver.Safari(executable_path='/Applications/Safari Technology Preview.app/Contents/MacOS/safaridriver')
set_content_size(driver, 800, 600)
driver.get('https://www.apple.com/safari/')
driver.get_screenshot_as_file('screenshot.png')
driver.quit()
