*** Settings ***
Documentation    This script will test the error message for incomplete details
Library    SeleniumLibrary
Library    ScreenCapLibrary
Suite Teardown        Close Browser    #keyword execute at end
Resource    Resources/SauceDemo.resource
Resource    Resources/SauceShopPage.robot
Resource    Resources/CartPage.robot
Resource    Resources/CheckoutPage.robot

*** Test Cases ***
Validate Adding items into cart
    Given Open the Application in chrome browser    ${url}    ${browser}
    When Fill the login form    ${user}    ${pass}
    And Get all the item titles in the shop page
    Then Add item into cart    ${backpack}

Validate error when first name is not entered in user information
    Proceed to user information page
    Proceed without providing info    ${first_name_error}
    Navigate to initial checkout page

Validate error when last name is not entered in user information
    Proceed to user information page
    provide user info    ${first_name_id}    ${first_name}
    Proceed without providing info    ${last_name_error}
    Navigate to initial checkout page

Validate error when Postal code is not entered in user information
    Proceed to user information page
    provide user info    ${first_name_id}    ${first_name}
    provide user info    ${last_name_id}    ${last_name}
    Proceed without providing info    ${postal_code_error}
    Navigate to initial checkout page
    Click on logout



