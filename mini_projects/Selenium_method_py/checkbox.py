from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import logging
import time

# Configure logging
logging.basicConfig(level=logging.INFO)

# Initialize Chrome WebDriver
driver = webdriver.Chrome()

try:
    # Navigate to the Checkbox page
    url = 'https://the-internet.herokuapp.com/checkboxes'
    logging.info(f'Navigating to {url}')
    driver.get(url)

    # Wait for the checkboxes to be present
    checkbox_one = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.XPATH, '//input[(@type="checkbox") and (position()=1)]'))
    )
    checkbox_two = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.XPATH, '//input[(@type="checkbox") and (position()=2)]'))
    )

    # Check the initial states
    logging.info(f'Checkbox 1 is {"checked" if checkbox_one.is_selected() else "unchecked"}')
    logging.info(f'Checkbox 2 is {"checked" if checkbox_two.is_selected() else "unchecked"}')

    # Perform actions on checkboxes
    # Check checkbox 1 if it's not checked
    if not checkbox_one.is_selected():
        logging.info('Checking Checkbox 1')
        checkbox_one.click()
    else:
        logging.info('Checkbox 1 is already checked')

    # Uncheck checkbox 2 if it's checked
    if checkbox_two.is_selected():
        logging.info('Unchecking Checkbox 2')
        checkbox_two.click()
    else:
        logging.info('Checkbox 2 is already unchecked')

    # Verify final states
    logging.info(f'Checkbox 1 is now {"checked" if checkbox_one.is_selected() else "unchecked"}')
    logging.info(f'Checkbox 2 is now {"checked" if checkbox_two.is_selected() else "unchecked"}')

    # Take a screenshot to document the final state
    timestamp = time.strftime('%Y%m%d-%H%M%S')
    screenshot_filename = f'checkboxes_screenshot_{timestamp}.png'
    driver.save_screenshot(screenshot_filename)
    logging.info(f'Screenshot saved as {screenshot_filename}')

except Exception as e:
    logging.error(f'An error occurred: {e}')

finally:
    # Close the WebDriver
    driver.quit()
    logging.info('Browser closed')
