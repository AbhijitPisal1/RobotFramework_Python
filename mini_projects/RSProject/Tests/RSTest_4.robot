*** Settings ***
Documentation    This test script is for data driven test using external csv file
Library    SeleniumLibrary
Library    DataDriver    file=Resource/data.csv    encoding=utf_8    dialect=unix
Test Setup        Open the Application in chrome browser    ${URL}
Test Teardown    Close Browser    #keyword execute at end
Test Template     Validate successful login
Resource    Resource/RSproject.resource
Resource    Resource/LandingPage.robot

*** Test Cases ***
login with user ${username} and password ${password}    defaultuser    defaultpass

*** Keywords ***
Validate successful login
    [Arguments]     ${username}     ${password}
    LandingPage.User filled the login form    ${username}     ${password}
    LandingPage.wait until it checks and display error message
    LandingPage.verify if error message is correct