*** Settings ***
Documentation    This test script will test parameterization of testcase and test template
Library    SeleniumLibrary
Test Setup        Open the Application in chrome browser    ${URL}
Test Teardown    Close Browser    #keyword execute at end
Test Template     Validate successful login
Resource    Resource/RSproject.resource
Resource    Resource/LandingPage.robot

*** Test Cases ***    username    password
invalid username        hdyguhr74hr    learing
invalid password        rahulshettyacademy    75578434343
special character        shu&1    hsy@1*!
No input                                

*** Keywords ***
Validate successful login
    [Arguments]     ${username}     ${password}
    LandingPage.User filled the login form    ${username}     ${password}
    LandingPage.wait until it checks and display error message
    LandingPage.verify if error message is correct