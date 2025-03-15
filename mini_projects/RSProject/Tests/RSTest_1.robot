*** Settings ***
Documentation    This test script will test case for purchase of items
Library    SeleniumLibrary
Library    Collections
Library    String
Library    Library/Shop.py
Test Setup        Open the Application in chrome browser    ${URL}
#Test Teardown    Close Browser session    #keyword execute at end
Resource    Resource/RSproject.resource
Resource    Resource/LandingPage.robot
Resource    Resource/ShopPage.robot

*** Test Cases ***
Login and purchase items from shop
    LandingPage.User filled the login form    ${username}    ${valid_password}
    ShopPage.Verify if the cart titles in the shop page    ${expectedList}
    Add Items To Cart And Checkout    ${ListOFProducts}
    ShopPage.verify items in checkout page and proceed    ${ListOFProducts}
    ShopPage.Click on checkout
    ShopPage.Fill details in Confirmation page and purchase    ${country_name}
